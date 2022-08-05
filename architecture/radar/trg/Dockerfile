# Dockerfile

FROM node:12-alpine as build
WORKDIR /build
RUN yarn global add tech-radar-generator@0.5.2
COPY radar.json /build/
RUN tech-radar-generator radar.json /build/dist

FROM nginx:1.23.1
WORKDIR /opt/radar
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /build/dist .
CMD ["nginx", "-g", "daemon off;"]
