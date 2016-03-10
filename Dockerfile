FROM centos:7
MAINTAINER sebbrochet contact@sebbrochet.com

# Make sure the package repo is up to date
RUN yum update -y

RUN yum install -y \
    curl \
    git \
    tree

RUN curl -L https://omnitruck.chef.io/install.sh | bash -s -- -c current -P chefdk 

RUN chef verify

RUN echo 'eval "$(chef shell-init bash)"' >> ~/.bash_profile

RUN source ~/.bash_profile

# Install some knife plugins
RUN chef gem install \
    knife-windows \
    knife-azure \
    knife-ec2 \
    knife-google \
    knife-supermarket

WORKDIR /tmp/workdir

COPY knife_entrypoint.sh /knife_entrypoint.sh
RUN chmod 755 /knife_entrypoint.sh
