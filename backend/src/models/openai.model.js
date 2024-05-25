const mongoose = require('mongoose');
const { toJSON, paginate } = require('./plugins');

const chatHistorySchema = mongoose.Schema(
  {
    user: {
      type: mongoose.SchemaTypes.ObjectId,
      ref: 'User',
      required: true,
    },
    typeId: {
      type: String,
      required: true,
      trim: true,
    },
    type: {
      type: String,
      required: true,
      trim: true,
    },
    model: {
      type: String,
      required: true,
      trim: true,
    },
    prompt: {
      type: String,
      required: true,
      trim: true,
    },
    response: {
      type: String,
      required: true,
      trim: true,
    },
    followUp: {
      type: mongoose.SchemaTypes.Array,
    },
  },
  {
    timestamps: true,
  },
);

// add plugin that converts mongoose to json
// chatHistorySchema.plugin(toJSON);
chatHistorySchema.plugin(paginate);

/**
 * @typedef ChatHistory
 */
const ChatHistory = mongoose.model('ChatHistory', chatHistorySchema);

module.exports = ChatHistory;
