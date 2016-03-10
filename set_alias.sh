alias chef='sudo docker run -it --rm --entrypoint=chef sebbrochet/docker-chef-centos-workstation'
alias knife='sudo docker run -it --rm --entrypoint=/knife_entrypoint.sh -e DEV_UID=$UID -e DEV_GID=$GID -v $PWD:/tmp/workdir sebbrochet/docker-chef-centos-workstation'

