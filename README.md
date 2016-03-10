# Your chef workstation as a docker container

Includes latest stable ChefDK and a few knife plugins
* knife-windows
* knife-azure
* knife-ec2
* knife-google
* knife-supermarket

### To build it
`sudo docker build -t sebbrochet/docker-chef-centos-workstation .`

### Usage
* Can be either used interactively as a stateful container
  * `sudo docker run -it --name chef-workstation -v $HOME:$HOME sebbrochet/docker-chef-centos-workstation`
  * 2 BASH scripts ([start_container.sh](start_container.sh) and [restart_container.sh](restart_container.sh)) are supplied for this purpose
* Or be used in "alias" mode where `chef`and 'knife`are aliased to docker run expressions
  * `source set_alias.sh`
  * `knife <COMMAND>`
  * `chef <COMMAND>` 

### Issues
* 'knife upload' doesn't work in "alias" mode (UID hack doesn't make it)
