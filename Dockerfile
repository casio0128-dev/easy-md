# イメージ（実行したい環境）を指定する
FROM node:14.11-alpine
# 作成者の署名（不必要）
LABEL MAINTAINER caiso-pro
# 作業
WORKDIR /usr/work
COPY . .

RUN apk update && \
    apk add --no-cache sudo npm git

RUN npm init --yes
RUN npm install -g webpack webpack-cli
RUN npm install -g create-react-app