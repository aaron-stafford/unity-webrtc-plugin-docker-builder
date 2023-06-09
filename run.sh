#!/usr/bin/env bash
set -e
set -x
docker run --env WEBRTC_GIT_REPO=$WEBRTC_PLUGIN_REPO --env WEBRTC_GIT_REPO_BRANCH=$WEBRTC_PLUGIN_REPO_BRANCH --platform=linux/amd64 -v $(pwd)/script:/script -v $(pwd)/../result:/result -it build_unity_webrtc_plugin_android ./script/runner.sh all
