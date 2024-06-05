FROM opensuse/tumbleweed

# ENV EMSDK_VERBOSE=1
ENV EMSDK_KEEP_DOWNLOADS=1
ENV EMSDK_PYTHON=/usr/bin/python3
COPY cn-install.sh /opt/emsdk-4-cn/
COPY cn-activate.sh /opt/emsdk-4-cn/
WORKDIR /opt/emsdk-4-cn

RUN zypper dup -yl \
    && zypper in -yl git bzip2 gzip \
    && zypper in -yl -t pattern --recommends devel_python3 \
    && zypper clean -a

RUN git clone https://github.com/emscripten-core/emsdk.git emscripten
RUN ./cn-install.sh 3.1.25 \
    && ./cn-install.sh 3.1.50
