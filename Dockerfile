FROM n8nio/n8n:latest

WORKDIR /patches

# Copia la versione patchata del file nel container
COPY LmChatOpenAi.node.js .

# Sovrascrivi il file originale con quello patchato
RUN cp LmChatOpenAi.node.js \
    /usr/local/lib/node_modules/n8n/node_modules/@n8n/n8n-nodes-langchain/dist/nodes/llms/LMChatOpenAi/LmChatOpenAi.node.js
