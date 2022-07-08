FROM ubuntu

RUN apt update; \
    apt install -y curl file git unzip xz-utils zip libglu1-mesa; \
    git clone https://github.com/flutter/flutter.git -b stable && \
    echo "export PATH=\"$PATH:/flutter/bin\"" >> ~/.bashrc

ENV PATH=$PATH:/flutter/bin

WORKDIR /source
