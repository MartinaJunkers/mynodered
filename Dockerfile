ROM registry.ng.bluemix.net/ibmnode:latest
COPY ./ Retweet+Bluemix
WORKDIR Retweet+Bluemix
RUN npm install -d --production
EXPOSE 80
ENV PORT 80
ENV DOCKER true
#CMD ["node", "app.js"]
RUN npm install -g node-inspector
EXPOSE 8080
EXPOSE 5858
CMD ["./debug.sh"]
