const httpStatus = require('http-status');
const { OpenAI } = require('../models');
const ApiError = require('../utils/ApiError');
const ChatHistory = require('../models/openai.model');

/**
 * Create a chat message
 * @param {Object} message
 * @returns {Promise<ChatHistory>}
 */
const saveChat = async (message) => {
  return OpenAI.create(message);
};

const updateChat = async (followup) => {
  await OpenAI.updateOne(
    { typeId: followup.typeId },
    { $push: { followUp: { prompt: followup.prompt, response: followup.response, createdAt: new Date().toISOString() } } },
  );
};

const getChatById = async (id) => {
  return await OpenAI.findOne({ typeId: id });
};

const getChats = async (user) => {
  const chats = await ChatHistory.find({ user: user.id }).sort({ _id: -1 });
  return chats;
};

module.exports = {
  saveChat,
  getChatById,
  getChats,
  updateChat,
};
