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
    apiKey: 'AIzaSyAXCL66tSfrqJhKsZlgv_pMd3MlDLsOyNA',
    appId: '1:743321242950:web:c1ca3f3ce5391ff9376947',
    messagingSenderId: '743321242950',
    projectId: 'gabut-flutter',
    authDomain: 'gabut-flutter.firebaseapp.com',
    storageBucket: 'gabut-flutter.appspot.com',
    measurementId: 'G-6D8ZXDS87W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_UWjk_qmnX1lpHOchI1En6v6IY-Cif7k',
    appId: '1:743321242950:android:f9afb7bfcfb0eb75376947',
    messagingSenderId: '743321242950',
    projectId: 'gabut-flutter',
    storageBucket: 'gabut-flutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCARF9__NImdc9oC_B5RgSH0uXX5DNTSUQ',
    appId: '1:743321242950:ios:ea6c8756846a3526376947',
    messagingSenderId: '743321242950',
    projectId: 'gabut-flutter',
    storageBucket: 'gabut-flutter.appspot.com',
    iosBundleId: 'com.example.gabutFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCARF9__NImdc9oC_B5RgSH0uXX5DNTSUQ',
    appId: '1:743321242950:ios:ea6c8756846a3526376947',
    messagingSenderId: '743321242950',
    projectId: 'gabut-flutter',
    storageBucket: 'gabut-flutter.appspot.com',
    iosBundleId: 'com.example.gabutFlutter',
  );
}
