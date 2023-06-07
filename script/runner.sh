#!/usr/bin/env bash
set -e
git clone --branch issue-802-part-1 https://github.com/lumin-leaper/com.unity.webrtc --depth=1
cd com.unity.webrtc
cp /result/webrtc-android.zip webrtc.zip
bash -e BuildScripts~/build_plugin_android.sh
cp Runtime/Plugins/Android/libwebrtc.aar /result/.
