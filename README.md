# DockerWP

DockerWP is a personal project to make my life easier. I have tried a number of ways to do local development, but so far, Docker has worked best.

## First steps
If you run OSX, then you have to install boot2docker first. Docker requires certain aspects of the linux kernel that OSX just doesn't have.
You can get the latest boot2docker installer here: https://github.com/boot2docker/osx-installer/releases/latest
Then follow normal steps to install OSX apps.
Before you can run Docker commands, you need to run:

`boot2docker init`

`boot2docker start`

`eval "$(boot2docker shellinit)"`

IF you're running Windows, I can't help you, good luck. Luckily there are some instructions: http://docs.docker.com/installation/windows/

If you're running linux, it's pretty easy to get docker installed. You can find instuctions for your distro here: http://docs.docker.com/installation/

## Running DockerWP

Once you have Docker installed, checkout this repo then run this command in the directory:

`docker build -t dockerwp .`

Then run your mysql container:

`docker run --name dockerwp-mysql -e MYSQL_ROOT_PASSWORD=yourpassword -d mysql`

Then run your WordPress container with a link to the mysql container:

`docker run --name dockerwp-wordpress --link DockerWP-mysql:mysql -p 8080:80 -d DockerWP`

If you're running linux, you can reach your WordPress install at `localhost:8080`.
If you're running OSX, run `boot2docker ip`. You can access WordPress at `ip:8080`.

## Getting into the container

Personally, I don't use and IDE for dev work. I use vim. Here's how to get in.

`docker exec -it dockerwp-wordpress zsh`

If you don't like zsh, you can just use bash:

`docker exec -it dockerwp-wordpress bash`

I'm sure there's a way to setup an IDE/Editor using the filesystem and maybe one day I'll bother to figure that out. If you figure it out and want to share, submit a pull request!


## Notes

This is a personal project. If you submit a pull request that I don't like or won't use, it won't get merged. But you can always fork this and make your own. :)
