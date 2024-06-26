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
    apiKey: 'AIzaSyBqWnpDc2ONik7LbXE3tbReI7mNsZRhtoQ',
    appId: '1:803956275515:web:68f8ec36036896bcefdf1e',
    messagingSenderId: '803956275515',
    projectId: 'pettakecareremake',
    authDomain: 'pettakecareremake.firebaseapp.com',
    storageBucket: 'pettakecareremake.appspot.com',
    measurementId: 'G-77J9J8PT8C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDEyxT2TTPKsfvilWSaSxDUK6BmSRyP7BE',
    appId: '1:803956275515:android:994d17e0c51bd8e9efdf1e',
    messagingSenderId: '803956275515',
    projectId: 'pettakecareremake',
    storageBucket: 'pettakecareremake.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBGPQp6st5ozv-PEWEirQ2Pck-F3RdM2sc',
    appId: '1:803956275515:ios:352f30dc1d1d356befdf1e',
    messagingSenderId: '803956275515',
    projectId: 'pettakecareremake',
    storageBucket: 'pettakecareremake.appspot.com',
    iosBundleId: 'com.example.pettakecare',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBGPQp6st5ozv-PEWEirQ2Pck-F3RdM2sc',
    appId: '1:803956275515:ios:a5e63092ac8cae73efdf1e',
    messagingSenderId: '803956275515',
    projectId: 'pettakecareremake',
    storageBucket: 'pettakecareremake.appspot.com',
    iosBundleId: 'com.example.pettakecare.RunnerTests',
  );
}
