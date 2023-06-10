#!/usr/bin/env bash
set -e
set -x
echo Cloning repo: $WEBRTC_GIT_REPO_BRANCH
echo Cloning fork: $WEBRTC_GIT_REPO
git clone --branch $WEBRTC_GIT_REPO_BRANCH $WEBRTC_GIT_REPO --depth=1
cd com.unity.webrtc
cp ../../result/webrtc-android.zip webrtc.zip
bash -e BuildScripts~/build_plugin_android.sh
cp Runtime/Plugins/Android/libwebrtc.aar /result/.
