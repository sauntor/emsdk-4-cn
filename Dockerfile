FROM opensuse/tumbleweed

RUN zypper dup -yl \
    && zypper in -yl git bzip2 gzip \
    && zypper in -yl -t pattern --recommends devel_python3 \
    && zypper se -i python \
    && zypper clean -a
RUN whereis python3
RUN git clone https://github.com/emscripten-core/emsdk.git /opt/emsdk
ENV EMSDK_VERBOSE=1
ENV EMSDK_PYTHON=/usr/bin/python3
WORKDIR /opt/emsdk
RUN ./emsdk install 3.1.25 \
    && ./emsdk install 3.1.50
