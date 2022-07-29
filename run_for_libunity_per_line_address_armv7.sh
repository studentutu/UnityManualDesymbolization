#!/usr/bin/env sh

# set -x

file="per_adress.txt"
# lines=$(cat $file) useless use of cat (concatanate files  - separate process)


while read line; do
    echo "$line"
    /c/Users/path_to_unity/2020.3.16f1/Editor/Data/PlaybackEngines/AndroidPlayer/NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/windows-x86_64/bin/arm-linux-androideabi-addr2line -f -C -e ./EditorIL2CPP_release_libunity/Symbols/armeabi-v7a/libunity.sym.so $line
done <$file