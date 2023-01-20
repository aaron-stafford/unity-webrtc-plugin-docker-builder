#!/usr/bin/env bash

docker run --platform=linux/amd64 -v $(pwd)/script:/script -it build_unity_webrtc_plugin_android
