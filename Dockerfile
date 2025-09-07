FROM n8nio/n8n:latest

WORKDIR /patches

# Copia il file patchato nel container
COPY LmChatOpenAi.node.js .

# Sovrascrivi forzatamente il file originale
RUN cp -f LmChatOpenAi.node.js /usr/local/lib/node_modules/n8n/node_modules/@n8n/n8n-nodes-langchain/dist/nodes/llms/LMChatOpenAi/LmChatOpenAi.node.js
