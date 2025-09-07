FROM n8nio/n8n:latest

# Crea una cartella temporanea
WORKDIR /patches

# Aggiungi il file JS modificato (che metteremo nel tuo repo)
COPY LmChatOpenAi.node.js .

# Copia il file nella posizione corretta durante il build
RUN cp LmChatOpenAi.node.js /usr/local/lib/node_modules/n8n/node_modules/@n8n/nodes-langchain/nodes/llms/LMChatOpenAi/LmChatOpenAi.node.js
