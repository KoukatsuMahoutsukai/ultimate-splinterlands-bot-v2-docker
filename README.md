# Docker for Ultimate-Splinterlands-Bot-v2
Docker image based on https://github.com/PCJones/Ultimate-Splinterlands-Bot-V2

image on dockerhub https://hub.docker.com/r/koukatsumahoutsukai/ultimate-splinterlands-bot-v2

made the container to run on a vps, sharing for others if they want to use.

## Instructions
`docker container run -it -d koukatsumahoutsukai/ultimate-splinterlands-bot-v2`

-detached so that container keeps on running


`docker container attach "CONTAINER NAME"`

-replace the CONTAINER NAME with the assigned name for the container you ran remove the double quotes, the command attaches to the container to setup the configs, you will be automatically moved inside the bash of the container for configuration

From this point you can continue with the tutorial on PCJones repo or follow some loose instructions from me below

`ls`
-to confirm structure, you should see a bunch of files and a folder to config and data

`cd config`
then
`ls`
-you will see a couple of files, config-example.txt and accounts-example.txt are the two important ones

`nano config-example.txt`

-edit the config to your liking then ctrl+o to save as config.txt, ctrl+x to close

`nano accounts-example.txt`

-place you username and posting key then ctrl+o to save as accounts.txt, ctrl+x to close

`exit`

-to exit the bash and continue the to the app, the splinterlands bot would automatically start after exiting bash

`ctrl+p + ctrl+q`

-to detach from the container and let it run on the background

`docker container attach "CONTAINER NAME"`

-to attach again to the running container and check hows the bot running
