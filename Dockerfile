FROM node:22-alpine
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn medusa build
EXPOSE 9000
CMD ["yarn", "medusa", "start"]
