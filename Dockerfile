FROM nginx:1.13-alpine

ENV APP_PATH /app
ENV PATH $APP_PATH/node_modules/@angular/cli/bin/:$PATH

RUN apk add --update --no-cache nodejs && mkdir $APP_PATH && rm -rf /etc/nginx/conf.d/*
WORKDIR $APP_PATH

COPY . .

COPY nginx/default.conf /etc/nginx/conf.d/

RUN npm install \
  && ng build --aot --prod \
  && rm -rf /usr/share/nginx/html/* \
  && mv ./dist/* /usr/share/nginx/html/ \
  && npm cache clean \
  && apk del nodejs libstdc++ libgcc libuv http-parser ca-certificates \
  && rm -rf ./*

CMD ["nginx", "-g", "daemon off;"]
