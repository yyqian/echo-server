FROM node:slim
ENV DIR /root
WORKDIR ${DIR}
COPY app.js ${DIR}/app.js
EXPOSE 8080
CMD ["node","app.js"]
