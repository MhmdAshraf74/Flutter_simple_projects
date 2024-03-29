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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCspjWdEMJg7Ekjidj_MIzO2yy1j-LL-T0',
    appId: '1:505821804638:web:d034a2bd47635fc4129ccf',
    messagingSenderId: '505821804638',
    projectId: 'frontend2024-9ebcb',
    authDomain: 'frontend2024-9ebcb.firebaseapp.com',
    databaseURL: 'https://frontend2024-9ebcb-default-rtdb.firebaseio.com',
    storageBucket: 'frontend2024-9ebcb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAYvtOcfZUyfB3mYfwU8s7NE4r4-mu7kfk',
    appId: '1:505821804638:android:3f5a1ff9c13b3cd0129ccf',
    messagingSenderId: '505821804638',
    projectId: 'frontend2024-9ebcb',
    databaseURL: 'https://frontend2024-9ebcb-default-rtdb.firebaseio.com',
    storageBucket: 'frontend2024-9ebcb.appspot.com',
  );
}
