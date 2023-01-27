#!/usr/bin/env bash
set -e
cd /result
git clone https://github.com/Unity-Technologies/com.unity.webrtc.git --depth=1
cd com.unity.webrtc
patch -p1 -i /patches/all.patch
cp /result/webrtc-android.zip webrtc.zip
bash -e BuildScripts~/build_plugin_android.sh
