FROM node:lts-buster
RUN git clone https://github.com/Sddxf/PRINCE-XMD prince_md
WORKDIR /root/Mr prince_md
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
