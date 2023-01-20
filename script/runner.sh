#!/usr/bin/env bash

git clone https://github.com/Unity-Technologies/com.unity.webrtc.git --depth=1
cd com.unity.webrtc
bash BuildScripts~/build_plugin_android.sh
