#!/usr/bin/env bash
cd ~/Documents/workspace/cordova-expansion/
cordova build android --release
/usr/local/java/jdk1.8.0_40/bin/jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore cordova_expansion.keystore platforms/android/build/outputs/apk/android-release-unsigned.apk cordova_expansion
/usr/local/java/jdk1.8.0_40/bin/jarsigner -verify -verbose -certs platforms/android/build/outputs/apk/android-release-unsigned.apk
~/Documents/apps/android/sdk/build-tools/22.0.1/zipalign -v 4 platforms/android/build/outputs/apk/android-release-unsigned.apk cordova_expansion-final.apk

echo "main.110.com.nishionline.android.cordovaExpansion.obb"
