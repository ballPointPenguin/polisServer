FROM node:10.20.1-alpine

RUN ["mkdir", "/build"]

VOLUME ["/build"]
