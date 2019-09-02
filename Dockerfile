From node:12.6.0

WORKDIR /server

# add `/code/node_modules/.bin` to $PATH
ENV PATH /server/node_modules/.bin:$PATH

COPY package*.json /server/
RUN npm install

COPY . /server

EXPOSE 3000

RUN ls -la

ENTRYPOINT [ "npm", "start" ]