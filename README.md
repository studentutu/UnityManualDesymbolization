# UnityManualDesymbolization
Desymbolize IL2CPP build from unity version


Link to the original source : 
https://support.unity.com/hc/en-us/articles/115000292166-Symbolicate-Android-crash

Also, from Unity 2019.3 you can use build-in Unity Adb Logcat Package with stack trace utility :

https://docs.unity3d.com/Packages/com.unity.mobile.android-logcat@1.2/manual/StacktraceUtility.html



# Setup 

1) Donwload Unity version with which build was created. Download Android Support. 
2) Create folder where you will put all symbols (From Unity Editor path, from your IL2Cpp build)
3) In each bash file change ...../path_to_unity/    into your path for Unity Editor with which application was build.
4) In each bash filed change ./EditorIL2CPP_release_libunity to the name of the folder, where you copied Unity Editor Version of lib symbols ( see first link )
5) Put All shell files along with crash.txt, per_adress.txt in the same folder as pointed in setup #1
6) Use crash from your crash analytics -> put into crash.txt
7) Put the same crash into -> per_adress.txt and separate each line starting with #


# Usage

1) navigate to your the target folder ( as in setup #1 )
2) Use git bash  ( open bash in target folder)
3) Run command :


        ./run_for_armv7_app_il2cpp_libil2cpp  # for arm7 crash
        ./run_for_armv8_app_il2cpp_libil2cpp  # for arm8-x64 crash


if crash report is empty from those two use per-line command which will read full per_adress.txt and for each line, will spit out Unity dereferenced code.

        ./run_for_libunity_per_line_address_armv7  # for arm7 crash
        ./run_for_libunity_per_line_address_armv8  # for arm8-x64 crash

