alias bluetoothdebugging='adb forward tcp:4444 localabstract:/adb-hub && adb connect localhost:4444'
alias wifidebugging='adb tcpip 5555 && adb connect 172.16.1.51:5555'
alias wificonnect='adb connect 172.16.1.43:5555'

alias dhu='adb forward tcp:5277 tcp:5277 && sleep 2 && $ANDROID_HOME/extras/google/auto/desktop-head-unit '


export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_AVD_HOME=$HOME/.android/avd
export ANDROID_SDK_HOME=$ANDROID_HOME
export ANDROID_NDK_HOME=ANDROID_HOME/ndk-bundle/

export PATH=${PATH}:$ANDROID_NDK_HOME
export PATH=${PATH}:$ANDROID_HOME/tools
export PATH=${PATH}:$ANDROID_HOME/platform-tools
export PATH=${PATH}:$ANDROID_HOME/build-tools/28.0.2

# https://github.com/pxb1988/dex2jar
alias dex2jar='sh $ANDROID_HOME/dex2jar-2.0/d2j-dex2jar.sh -f $1'
