# README

## Quick setup of environment:
```setup.sh``` to fast setup your environment. It will:

- Create a python virtual environment .venv
- Activate the virtual environment
- Install the package in development mode inside the virtual environment

## Prepare envirorment and set up

### Envirorment in Anaconda
```bash
conda create -n llama2-env python=3.12
```
```bash
conda activate llama2-env
```

# Packages needed
CTransformers: Python bindings for the Transformer models implemented in C/C++ using GGML library.
Repo: https://github.com/marella/ctransformers
Use with LangChain: https://python.langchain.com/v0.1/docs/integrations/providers/ctransformers/

sentence-transformers:  is a Python framework for state-of-the-art sentence, text and image embeddings.
https://sbert.net/

pinecone-client, langchain, flask

```bash
pip install .
```

### Model used
llama-2-7b-chat.ggmlv3.q4_0.bin

Download it from the following link:
https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGML/tree/main

Create the folder "model" and place the model inside it

### Crete index in Pinecone
Dimension to create index for the embbeding model we are using sentence-transformers/all-MiniLM-L6-v2 :
https://huggingface.co/sentence-transformers/all-MiniLM-L6-v2
The dimension of the vector that this model returns is : 384

###  Create embeddings and storing them in Pinecone
https://docs.pinecone.io/integrations/langchain
