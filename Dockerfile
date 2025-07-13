FROM node:lts-buster
RUN git clone https://github.com/OwnerDEPER/RAHEEM-XMD-3 /root/ikJawad
WORKDIR /root/ikJawad
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
