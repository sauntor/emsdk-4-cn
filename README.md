# emsdk-4-cn [![Build GHCR Image](https://github.com/sauntor/emsdk-4-cn/actions/workflows/ci.yml/badge.svg)](https://github.com/sauntor/emsdk-4-cn/actions/workflows/ci.yml)
为不能/不想FQ的中国大陆用户提供emsdk的下载解决方案，主要用于支持`Qt for WebAssembly`，
若为其他用途，可以自行[定制`emsdk`版本](#定制emsdk版本)
> 目前至仅支持 `Linux x86_64`

### 安装
> 请确保系统已安装`podman`或`docker`

##### 1. 下载或`Clone`此项目（二选一）
```shell
# 直接下载
wget -O emsdk-4-cn.zip \
    https://github.com/sauntor/emsdk-4-cn/archive/refs/heads/main.zip
# 解压
unzip emsdk-4-cn.zip

# 或者

# 使用Git克隆
git clone https://github.com/sauntor/emsdk-4-cn.git

```
##### 2. 下载`emsdk`
> 请把`/path/to/emsdk-4-cn`换成目标安装目录
```shell
cd emsdk-4-cn
./download.sh /path/to/emsdk-4-cn
```

##### 3. 启用`emsdk`版本
> 以 `3.1.25` 为例
```shell
cd /path/to/emsdk-4-cn
./cn-install.sh 3.1.25
./cn-activate.sh 3.1.25
```

##### 4. 使用`emsdk`
> `emsdk`的路径`/path/to/emsdk-4-cn/emscripten`


# 默认包含的`emsdk`版本
|适配的`Qt`版本 | `emsdk`版本 |
|--------|-------------|
| 6.5    | 3.1.25      |
| 6.7    | 3.1.50      |

> 参考 https://doc.qt.io/qt-6/wasm.html#installing-emscripten

### 定制`emsdk`版本
1. 在`GitHub`上`Fork`此项目
2. 在`Fork`到你名下的项目中修改[`Dockerfile`](Dockerfile#L16)，
   移除不需要/添加需要 的版本
3. 将你的`GitHub`用户名替换到[`.github/username`](.github/username)，
   示例：`echo monster > .github/username`
