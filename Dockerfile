FROM node:16.14.0-buster
ENV NODE_VERSION 14.18.1

ARG HOME_DIR=/home/front
WORKDIR ${HOME_DIR}

COPY ./front ${HOME_DIR}

EXPOSE 3000

# コンテナが勝手に終了してしまわないよう設定
ENV CI=true
