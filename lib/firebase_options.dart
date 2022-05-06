// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCUjE4-r9Hn5ew6TvC1slS_LQLIEMOhsKQ',
    appId: '1:893970165329:web:e81a13850e0286b75d1270',
    messagingSenderId: '893970165329',
    projectId: 'espproject-a9f95',
    authDomain: 'espproject-a9f95.firebaseapp.com',
    databaseURL: 'https://espproject-a9f95-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'espproject-a9f95.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCoqq3GBBBIyghYwB7omohRkgZj5P-qibw',
    appId: '1:893970165329:android:86073a30096b21045d1270',
    messagingSenderId: '893970165329',
    projectId: 'espproject-a9f95',
    databaseURL: 'https://espproject-a9f95-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'espproject-a9f95.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAxBynygDLa2xXYBl_n_7tlJlihzm6pJzE',
    appId: '1:893970165329:ios:9977b4425a9152035d1270',
    messagingSenderId: '893970165329',
    projectId: 'espproject-a9f95',
    databaseURL: 'https://espproject-a9f95-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'espproject-a9f95.appspot.com',
    iosClientId: '893970165329-3s32e8mqfuu550frmlo5pm143qh2644d.apps.googleusercontent.com',
    iosBundleId: 'com.esptestkekw.app',
  );
}