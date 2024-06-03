# emsdk-4-cn
为不能/不想FQ的中国大陆用户提供emsdk的下载解决方案
> 目前至仅支持 `Linux x86_64`

### 下载镜像
> `podman`/`docker`命令自行替换
`docker pull ghcr.dockerproxy.com/sauntor/emsdk-4-cn`

### 复制emsdk到本地
```shell
docker run -n emsdk-4-cn -d ghcr.dockerproxy.com/sauntor/emsdk-4-cn
# 假设要把emsdk复制到$HOME
docker container cp emsdk-4-cn:/opt/emsdk ~/emsdk
```
