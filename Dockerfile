FROM n8nio/n8n:latest

# Rimuove il tracciamento lento di N8nLlmTracing
RUN sed -i 's/callbacks: \[new N8nLlmTracing(this)\]/callbacks: \[\]/' \
  /usr/local/lib/node_modules/n8n/node_modules/@n8n/nodes-langchain/nodes/llms/LMChatOpenAi/LmChatOpenAi.node.js
