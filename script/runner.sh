#!/usr/bin/env bash

git clone https://github.com/Unity-Technologies/com.unity.webrtc.git --depth=1
cd com.unity.webrtc
patch -N BuildScripts~/build_plugin_android.sh < /patches/x86_64.patch
cp /result/webrtc-android.zip .
bash BuildScripts~/build_plugin_android.sh
