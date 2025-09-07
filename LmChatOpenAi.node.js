/* patch per disabilitare N8nLlmTracing nel nodo LMChatOpenAi */
const { ChatOpenAI } = require('langchain/chat_models/openai');

module.exports = {
  description: 'LMChatOpenAi node patched to disable tracing',
  default: {
    name: 'LMChatOpenAi',
    version: 1,
  },
  async execute(this: any, items: any[]) {
    const returnData = [];
    for (const item of items) {
      const model = new ChatOpenAI({
        temperature: this.getNodeParameter('temperature', 0),
        // altri parametri come base model, max tokens...
        callbacks: [], // Tracing disabilitato qui
      });
      // implementa la logica originale: invocazione model e recupero output...
      const result = await model.call([{ role: 'user', content: this.getNodeParameter('prompt', item.json.text) }]);
      returnData.push({ json: result });
    }
    return [this.helpers.returnJsonArray(returnData)];
  },
};
