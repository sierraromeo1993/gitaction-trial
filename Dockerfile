FROM alpine:latest

# apk is a command that installs packages (not neccesarily npm packages
# to the file ). In this case we are installing npm.
# note we are putting --no-cache becuase we do not want to cache any
# any of the binaries becasue it will just eat up space

RUN apk add --no-cache git

RUN apk add --no-cache nodejs npm



# We designate a wroking folder where all of our source code that 
# we want in the image should be. Please note you create this
# directory on your local machine first docker doesnt do this by
# itself. This is good it allows us to pick and choose

WORKDIR /app

# with this command we are saying take everything
# where you currently are from your local machine"." 
# and copy it into the /app directory we just created 

COPY . .

RUN npm install

# we expose port 3000 this will allow other machines
# not apart of the docker network we might create or
# or just in general any local machine to 
# communicate with the docker container and all
# the files/code inside of it

EXPOSE 3000


# We designate the first command to be run at the
# Entrypoint of the docker image in this case we 
# are saying run the node command to start the
# program
# we then tell it in CMD what file we run the node 
# command on. Another way : 

ENTRYPOINT [ "node" ]

CMD ["app.js"]