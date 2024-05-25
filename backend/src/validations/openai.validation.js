const Joi = require('joi');

const chatCompletion = {
  body: Joi.object().keys({
    message: Joi.string().required(),
    messageId: Joi.string().allow(null).allow(''),
  }),
};

module.exports = {
  chatCompletion,
};
