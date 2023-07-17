FROM node:18

ARG YARN_PACKAGE
WORKDIR /usr/src/

COPY . .
RUN [ "yarn" ]

COPY $YARN_PACKAGE ./$YARN_PACKAGE/

CMD [ "yarn",  "workspace", "$YARN_PACKAGE", "start" ]
