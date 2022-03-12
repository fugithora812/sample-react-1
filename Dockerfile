FROM node:16.13.0-alpine3.12
ENV NODE_VERSION 14.18.1

WORKDIR /front

COPY ./front /front

EXPOSE 3000

# コンテナが勝手に終了してしまわないよう設定
ENV CI=true
