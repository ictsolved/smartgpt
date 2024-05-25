const express = require('express');
const validate = require('../../middlewares/validate');
const openaiValidation = require('../../validations/openai.validation');
const openAIController = require('../../controllers/openai.controller');
const auth = require('../../middlewares/auth');

const router = express.Router();

router.route('/chat-completion').post(auth(), validate(openaiValidation.chatCompletion), openAIController.chatCompletion);
router.route('/chats').get(auth(), openAIController.chats);
module.exports = router;
