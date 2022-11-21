# Cogz Empliyado Mobile App

Experiment from learnings in Flutter cross-platform for Admin dashboard.
UI inspired from Material Kit : [Material React kit](https://material-kit-react.devias.io/)

# Installation of Flutter Development Environment (Geoffrey's Experience on Installing)

1. Install Android Studio. Need Assistance with ITSO for admin priviledges because they have to enter admin priviledges two times. 1. for Android Studio 2. for Android Virtual Devices

2. Download Android SDK & Flutter SDK then extract the compressed files to your prefered directory (Note: directory address should not have spaces) 

3. once extracted, copy these two addresses & keep them on a notepad

-- C:\Users\SAMPLE_USER\Documents\FOLDER_WHERE_EXTRACTED\flutter\bin

-- C:\Users\SAMPLE_USER\Documents\FOLDER_WHERE_EXTRACTED\android_sdk\cmdline-tools\latest\bin

4. Then, Add the TWO addresses on the System Environmental Variables in the PATH. Need ITSO for assistance to access System Environmental Varibles for you to add in the PATH variable. (Add these addresses in the PATH variable where NodeJS was installed)

5. Install Flutter & Dart Plugin on Visual Studio Code

6. By creating a Flutter App, open VS Code then use CTRL+SHIFT+P to type Flutter when select Create Flutter Project

7. To run the App, you must open a virtual Android Device to simulate your app. Then type `flutter run -v` in the command prompt or terminal in the address of your Flutter App.

8. If an error messages shows (optional when no errors were displayed) like this:
FAILURE: Build failed with an exception.

What went wrong: A problem was found with the configuration of task ':app:processDebugResources' (type 'LinkApplicationAndroidResourcesTask').

In plugin 'com.android.internal.version-check' type 'com.android.build.gradle.internal.res.LinkApplicationAndroidResourcesTask' property 'androidJarInput.androidJar' specifies file 'C:\Users\SAMPLE_USER\AppData\Local\Android\sdk\platforms\android-31\android.jar' which doesn't exist.

Try Downloading the jar files from https://github.com/AndroidSDKSources/android-sdk-sources-list/blob/master/android.jar/api-level-31/android.jar then copy the download file to this directory:

C:\Users\SAMPLE_USER\AppData\Local\Android\Sdk\platforms\android-31

then run is again using `flutter run -v`

Note: before running the command, make sure to run your android virtual device first from your android studio.

