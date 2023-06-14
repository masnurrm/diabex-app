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
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDbSBtGCEUZ4ZcXLHABw_jJIzzBEIu6lWo',
    appId: '1:24378079525:web:1b302e440ba50f21b9c2cc',
    messagingSenderId: '24378079525',
    projectId: 'diabex-4e49f',
    authDomain: 'diabex-4e49f.firebaseapp.com',
    storageBucket: 'diabex-4e49f.appspot.com',
    measurementId: 'G-8C9TTEY38Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAyW3s7y_wm_mTbrfBC8PBvKwKEAUvGWXc',
    appId: '1:24378079525:android:c3b3c68c2994a63bb9c2cc',
    messagingSenderId: '24378079525',
    projectId: 'diabex-4e49f',
    storageBucket: 'diabex-4e49f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDpMmgIpy66PMKzrfa1-Vi8QvXjG5saVpg',
    appId: '1:24378079525:ios:72f35751bcd2f943b9c2cc',
    messagingSenderId: '24378079525',
    projectId: 'diabex-4e49f',
    storageBucket: 'diabex-4e49f.appspot.com',
    iosClientId: '24378079525-6vtuo5vr9qn4bnfpdk9b34j8nq8s3b54.apps.googleusercontent.com',
    iosBundleId: 'com.example.diabex',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDpMmgIpy66PMKzrfa1-Vi8QvXjG5saVpg',
    appId: '1:24378079525:ios:72f35751bcd2f943b9c2cc',
    messagingSenderId: '24378079525',
    projectId: 'diabex-4e49f',
    storageBucket: 'diabex-4e49f.appspot.com',
    iosClientId: '24378079525-6vtuo5vr9qn4bnfpdk9b34j8nq8s3b54.apps.googleusercontent.com',
    iosBundleId: 'com.example.diabex',
  );
}