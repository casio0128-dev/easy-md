# イメージ（実行したい環境）を指定する
FROM node:14.11-alpine
# 作成者の署名（不必要）
LABEL MAINTAINER caiso-pro
# カレントディレクトリの移動
WORKDIR /usr/work
# ホストPCのカレントディレクトリのファイルを、コンテナ内のカレントディレクトリにコピー
COPY . .
# パッケージマネージャを更新し、sudo, npm, gitコマンドをダウンロード
RUN apk update && \
    apk add --no-cache sudo npm git
# npmの初期化
RUN npm init --yes
# webpack, webpack-cli, create-react-app(reactアプリ構築ツール)のインストール
RUN npm install -g webpack webpack-cli create-react-app