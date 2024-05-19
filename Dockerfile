FROM python:3.12

# x-release-please-start-version
ARG PREFIX="llama2-medical-chatbot-0.0.0"
# x-release-please-end

COPY ./dist/$PREFIX-py3-none-any.whl ./$PREFIX-py3-none-any.whl

RUN pip install --no-cache-dir --upgrade $PREFIX-py3-none-any.whl
