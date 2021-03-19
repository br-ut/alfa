FROM fusuf/whatsasena:latest

RUN git clone https://github.com/br-ut/alfa /root/alfa
WORKDIR /root/alfa/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
