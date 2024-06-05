#!/bin/bash
BASE_DIR=$(cd $(dirname $0);pwd)
GITHUB_USER=$(cat ${BASE_DIR}/.github/username)

EMSDK_DIST=${1:-${HOME}/Emsdk}
if which podman 2>&- 1>&-; then
  CONTAINER_CLI=podman
elif which docker 2>&- 1>&-; then
  CONTAINER_CLI=docker
else
  echo "No docker/podman found"
  exit -1
fi
CRI_IMG=ghcr.dockerproxy.com/${GITHUB_USER}/emsdk-4-cn
$CONTAINER_CLI pull ghcr.dockerproxy.com/sauntor/emsdk-4-cn
$CONTAINER_CLI run --name emsdk-4-cn -d $CRI_IMG
$CONTAINER_CLI container cp emsdk-4-cn:/opt/emsdk-4-cn "$EMSDK_DIST"
$CONTAINER_CLI container rm -f emsdk-4-cn
$CONTAINER_CLI image rm -f $CRI_IMG
