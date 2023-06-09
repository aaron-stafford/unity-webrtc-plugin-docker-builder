#!/usr/bin/env bash
set -e
set -x
docker run --platform=linux/amd64 -v $(pwd)/script:/script -v $(pwd)/../result:/result -it build_unity_webrtc_plugin_android
