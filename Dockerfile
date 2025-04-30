FROM node:lts-buster
RUN git clone https://github.com/13065994/TOHID_MD.git
WORKDIR ./
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
