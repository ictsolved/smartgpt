const catchAsync = require('../utils/catchAsync');
const { openaiService } = require('../services');
const env = require('../config/config');
const Groq = require('groq-sdk');

const groq = new Groq({
  apiKey: env.openAI.apiKey,
});

const chats = catchAsync(async (req, res) => {
  const history = await openaiService.getChats(req.user);
  res.send(history);
});

const chatCompletion = catchAsync(async (req, res) => {
  let completion = await groq.chat.completions.create({
    messages: [
      {
        role: 'system',
        content: 'you are a helpful assistant.',
      },
      {
        role: 'user',
        content: req.body.message,
      },
    ],
    model: 'llama3-8b-8192',
  });

  res.send(completion);

  if (await openaiService.getChatById(req.body.messageId)) {
    await openaiService.updateChat({
      typeId: req.body.messageId,
      prompt: req.body.message,
      response: completion.choices[0].message.content,
    });
  } else {
    await openaiService.saveChat({
      user: req.user,
      typeId: completion.id,
      type: completion.object,
      model: completion.model,
      prompt: req.body.message,
      response: completion.choices[0].message.content,
    });
  }
});

module.exports = {
  chatCompletion,
  chats,
};
