# emsdk-4-cn
为不能/不想FQ的中国大陆用户提供emsdk的下载解决方案，主要用于支持`Qt for WebAssembly`，
若为其他用途，可以自行定制emsdk`版本
> 目前至仅支持 `Linux x86_64`

### 下载镜像
> 请自行替换`podman`/`docker`命令
`docker pull ghcr.dockerproxy.com/sauntor/emsdk-4-cn`

### 复制emsdk到本地
> 请自行替换`podman`/`docker`命令
```shell
docker run -n emsdk-4-cn -d ghcr.dockerproxy.com/sauntor/emsdk-4-cn
# 假设要把emsdk复制到$HOME
docker container cp emsdk-4-cn:/opt/emsdk ~/emsdk
docker rm -f emsdk-4-cn
```

# 默认包含的`emsdk`版本
|适配的`Qt`版本 | `emsdk`版本 |
|--------|-------------|
| 6.2    | 2.0.14      |
| 6.3    | 3.0.0       |
| 6.4    | 3.1.14      |
| 6.5    | 3.1.25      |
| 6.6    | 3.1.37      |
| 6.7    | 3.1.50      |

> 参考 https://doc.qt.io/qt-6/wasm.html#installing-emscripten

### 定制`emsdk`
1. 在`GitHub`上`Fork`此项目
2. 在`Fork`到你名下的项目中修改[`Dockerfile`](Dockerfile#L13)，移除不需要/添加需要的版本
3. 将上面步骤的`下载镜像`复制`emsdk到本地`中的`sauntor`替换成你的`GitHub`用户名
