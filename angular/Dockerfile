### STAGE 1: Build ###
FROM node:20 AS build
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build --prod

### STAGE 2: Run ###
FROM nginx:latest
RUN mkdir /etc/nginx/ssl
RUN chmod 755 /etc/nginx/ssl
COPY ssl/wildcard.oks.de.crt /etc/nginx/ssl
COPY ssl/wildcard.oks.de.key /etc/nginx/ssl
COPY default.conf /etc/nginx/conf.d/default.conf
COPY --from=build /usr/src/app/dist/studybuddy /usr/share/nginx/html
EXPOSE 443
