FROM node:16-alpine3.11
#use latest version of node
WORKDIR /app 
# if there's a /app file use it or create a new one  
#any line that follows /app will be run in /app folder of the container
ADD package*.json ./
#adds packages in the beggining so it can make use of the cache that exists  
#hence it will only check for the changes in source code and not install everything again 
RUN npm install
#RUN allows us to pass arguments  
#allows us to install all the dependencies that are in package.json
ADD . .
#ADD . (everything under this directry) to . (/app directory)
CMD node index.js
#runs index.js file 