FROM python:3.9-slim
RUN pip install pandora-chatgpt \
  && mkdir -p /opt/gpt
ENTRYPOINT pandora --token_file /opt/gpt/gpt.ck --server 0.0.0.0:62934
EXPOSE 62934