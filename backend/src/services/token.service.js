const jwt = require('jsonwebtoken');
const moment = require('moment');
const httpStatus = require('http-status');
const config = require('../config/config');
const userService = require('./user.service');
const { Token } = require('../models');
const ApiError = require('../utils/ApiError');
const { tokenTypes } = require('../config/tokens');
const { User } = require('../models');

function generateRandomPassword() {
  const length = Math.floor(Math.random() * 5) + 8; // random length between 8 and 12
  const upperCaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const lowerCaseChars = 'abcdefghijklmnopqrstuvwxyz';
  const numberChars = '0123456789';
  const symbolChars = '!@#$%^&*()_+[]{}|;:,.<>?';

  function getRandomChar(charSet) {
    return charSet[Math.floor(Math.random() * charSet.length)];
  }

  let password = '';
  password += getRandomChar(upperCaseChars); // add at least one upper case
  password += getRandomChar(lowerCaseChars); // add at least one lower case
  password += getRandomChar(numberChars); // add at least one number
  password += getRandomChar(symbolChars); // add at least one symbol

  const allChars = upperCaseChars + lowerCaseChars + numberChars + symbolChars;

  while (password.length < length) {
    password += getRandomChar(allChars);
  }

  // Shuffle the password to mix the mandatory characters
  password = password
    .split('')
    .sort(() => 0.5 - Math.random())
    .join('');

  return password;
}

/**
 * Generate token
 * @param {ObjectId} userId
 * @param {Moment} expires
 * @param {string} type
 * @param {string} [secret]
 * @returns {string}
 */
const generateToken = (userId, expires, type, secret = config.jwt.secret) => {
  const payload = {
    sub: userId,
    iat: moment().unix(),
    exp: expires.unix(),
    type,
  };
  return jwt.sign(payload, secret);
};

/**
 * Save a token
 * @param {string} token
 * @param {ObjectId} userId
 * @param {Moment} expires
 * @param {string} type
 * @param {boolean} [blacklisted]
 * @returns {Promise<Token>}
 */
const saveToken = async (token, userId, expires, type, blacklisted = false) => {
  const tokenDoc = await Token.create({
    token,
    user: userId,
    expires: expires.toDate(),
    type,
    blacklisted,
  });
  return tokenDoc;
};

/**
 * Verify Auth0 token and return token doc (or throw an error if it is not valid)
 * @param {string} token
 * @returns {Promise<Token>}
 */
const verifyAuth0Token = async (token) => {
  const options = {
    audience: config.auth0.audience,
    issuer: config.auth0.issuerBaseURL,
    algorithms: ['RS256'],
  };

  jwt.verify(token.accessToken, config.auth0.publicKey, options);

  const userDetails = jwt.decode(token.idToken);
  const email = userDetails.email;
  if (!(await User.isEmailTaken(userDetails.email))) {
    const password = generateRandomPassword();
    return User.create({
      email: email,
      password: password,
      name: userDetails.name | userDetails.nickname | email,
      role: 'user',
    });
  }
  
  return User.findOne({ email });
};

/**
 * Verify token and return token doc (or throw an error if it is not valid)
 * @param {string} token
 * @param {string} type
 * @returns {Promise<Token>}
 */
const verifyToken = async (token, type) => {
  const payload = jwt.verify(token, config.jwt.secret);
  const tokenDoc = await Token.findOne({ token, type, user: payload.sub, blacklisted: false });
  if (!tokenDoc) {
    throw new Error('Token not found');
  }
  return tokenDoc;
};

/**
 * Generate auth tokens
 * @param {User} user
 * @returns {Promise<Object>}
 */
const generateAuthTokens = async (user) => {
  const accessTokenExpires = moment().add(config.jwt.accessExpirationMinutes, 'minutes');
  const accessToken = generateToken(user.id, accessTokenExpires, tokenTypes.ACCESS);

  const refreshTokenExpires = moment().add(config.jwt.refreshExpirationDays, 'days');
  const refreshToken = generateToken(user.id, refreshTokenExpires, tokenTypes.REFRESH);
  await saveToken(refreshToken, user.id, refreshTokenExpires, tokenTypes.REFRESH);

  return {
    access: {
      token: accessToken,
      expires: accessTokenExpires.toDate(),
    },
    refresh: {
      token: refreshToken,
      expires: refreshTokenExpires.toDate(),
    },
  };
};

/**
 * Generate reset password token
 * @param {string} email
 * @returns {Promise<string>}
 */
const generateResetPasswordToken = async (email) => {
  const user = await userService.getUserByEmail(email);
  if (!user) {
    throw new ApiError(httpStatus.NOT_FOUND, 'No users found with this email');
  }
  const expires = moment().add(config.jwt.resetPasswordExpirationMinutes, 'minutes');
  const resetPasswordToken = generateToken(user.id, expires, tokenTypes.RESET_PASSWORD);
  await saveToken(resetPasswordToken, user.id, expires, tokenTypes.RESET_PASSWORD);
  return resetPasswordToken;
};

/**
 * Generate verify email token
 * @param {User} user
 * @returns {Promise<string>}
 */
const generateVerifyEmailToken = async (user) => {
  const expires = moment().add(config.jwt.verifyEmailExpirationMinutes, 'minutes');
  const verifyEmailToken = generateToken(user.id, expires, tokenTypes.VERIFY_EMAIL);
  await saveToken(verifyEmailToken, user.id, expires, tokenTypes.VERIFY_EMAIL);
  return verifyEmailToken;
};

module.exports = {
  generateToken,
  saveToken,
  verifyToken,
  verifyAuth0Token,
  generateAuthTokens,
  generateResetPasswordToken,
  generateVerifyEmailToken,
};
