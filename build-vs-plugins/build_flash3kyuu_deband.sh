#!/bin/bash

git clone https://github.com/SAPikachu/flash3kyuu_deband.git && cd flash3kyuu_deband

sed -i 's/env python/env python3/' ./waf
 
if ! ./waf configure; then
  echo ">> temp failure - reconfigure Context.py and ConfigSet.py <<"
  sed -i "s/path,m='rU'/path,m='r'/" .waf3-2.0.10-195b3fea150563357014bcceb6844e0e/waflib/Context.py
  sed -i "s/filename,m='rU'/filename,m='r'/" .waf3-2.0.10-195b3fea150563357014bcceb6844e0e/waflib/ConfigSet.py
  ./waf configure && ./waf build && cp build/libf3kdb.so /usr/local/lib/vapoursynth/
fi
