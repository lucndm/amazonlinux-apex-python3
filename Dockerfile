FROM amazonlinux:latest
RUN yum install -y gcc gcc-c++ freetype-devel yum-utils openssl-devel groupinstall development wget which python-devel findutils zlib-devel zip tar gzip
RUN amazon-linux-extras install -y python3=3.6.2
RUN curl https://bootstrap.pypa.io/get-pip.py | python - 'pip==18.0.0'
RUN curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sh
# RUN pip3 install aws
