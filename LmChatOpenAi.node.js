const { ChatOpenAI } = require('langchain/chat_models/openai');

module.exports = {
  description: 'Modified LMChatOpenAi node with tracing disabled',
  defaults: { name: 'LMChatOpenAi' },
  type: 'node',
  version: 1,
  execute() {
    const model = new ChatOpenAI({
      temperature: 0.7,
      callbacks: [], // <- qui abbiamo rimosso il tracing
    });
    return model;
  },
};
