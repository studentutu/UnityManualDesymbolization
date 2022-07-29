#!/usr/bin/env sh

# set -x

file="per_adress.txt"
# lines=$(cat $file) useless use of cat (concatanate files  - separate process)


while read line; do
    echo "$line"
    /c/Users/path_to_unity/2020.3.16f1/Editor/Data/PlaybackEngines/AndroidPlayer/NDK/toolchains/aarch64-linux-android-4.9/prebuilt/windows-x86_64/bin/aarch64-linux-android-addr2line -f -C -e ./EditorIL2CPP_release_libunity/Symbols/arm64-v8a/libunity.sym.so $line
done <$file