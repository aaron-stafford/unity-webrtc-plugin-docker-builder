#!/usr/bin/env bash
set -e

git clone https://github.com/Unity-Technologies/com.unity.webrtc.git --depth=1
cd com.unity.webrtc
patch -N BuildScripts~/build_plugin_android.sh < /patches/all.patch
cp /result/webrtc-android.zip webrtc.zip
bash -e BuildScripts~/build_plugin_android.sh
