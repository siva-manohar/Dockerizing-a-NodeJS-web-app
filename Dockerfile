FROM node:21

WORKDIR /src

COPY package*.json .

#npm = node packet manager
RUN npm install

# before copy step, the run command will create the depedencies.
COPY . .

EXPOSE 8000

CMD ["node","server.js"]
