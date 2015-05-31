cordova-expansion
====================

This is a test project to demonstrate that an android expansion file can be accessed using cordova build.

# Steps to build
1. `cordova create cordova-expansion com.nishionline.android.cordovaExpansion`
2. `cd cordova-expansion`
3. `cordova platforms add android`
4. `cordova plugin add cordova-plugin-device`
5. `cordova plugin add cordova-plugin-console`
6. Change minimum SDK version to 11 in `/platforms/android/AndroidManifest.xml`. It should read 
`<uses-sdk android:minSdkVersion="11" android:targetSdkVersion="22" />`.
7. Create a directory named `main_expansion`. Put directories and files to be kept in the expansion file in this folder.
I just created two directories `images` and `sound`. I put 3 images in `/main_expansion/images/` 
and an MP3 file in `/main_expansion/sound/`.
8. Run `zip -v -dc -r -x \*.DS_Store -Z store main_expansion main_expansion`. This will create `main_expansion.zip` 
with 0% compression.
9. Build the project.
```
cordova build android --release
```
Sign and zipalign it.
10. Upload the APK to Alpha testing on Google Play. Prepare store listing, publish the app.
11. Increase androidVersionCode in `config.xml`. Rebuild the APK, sign and zipalign and upload to alpha test mode along with the expansion file.
12. Grab the name of the uploaded expansion file, once it's uploaded and the Base64 licaence key from "Services and APIs" tab.
13. Install this plugin
```
cordova plugin add https://github.com/agamemnus/cordova-plugin-xapkreader.git
```
14. 
20. If something is not clear refer to [this guide](https://iphonedevlog.wordpress.com/2014/12/12/adding-an-android-apk-expansion-file-to-a-cordova-project/).


