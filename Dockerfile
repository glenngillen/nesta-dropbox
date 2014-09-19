FROM ubuntu
RUN apt-get -y update
RUN apt-get -y install curl
RUN apt-get -y install git
RUN curl -L https://get.rvm.io | bash -s stable
RUN /bin/bash -l -c "rvm requirements"
RUN /bin/bash -l -c "rvm install ruby-2.1.0"
RUN /bin/bash -l -c "rvm use ruby-2.1.0 --default"
RUN /bin/bash -l -c "rvm rubygems current"
RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"
RUN chsh -s /bin/bash
ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

