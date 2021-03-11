#Install the last version of alpine distro
FROM node:alpine    
#Work directory where you working at
WORKDIR /usr/app
#Copy this files to Docker machine (workdir)
COPY package*.json ./
RUN npm install
#Copy the remaining files to the docker execpt the ones refer in .dockerignore
COPY . .
#Port to acess the server
EXPOSE 3000
#Unique per dockerfile, instruction to star app
CMD ["npm","start"]