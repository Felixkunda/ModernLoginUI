// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBS2INIKuD8gI4YWocPJ9dchCaki-WUr4U',
    appId: '1:113248530077:web:e825987f3e8e2a4af46e74',
    messagingSenderId: '113248530077',
    projectId: 'neetra-app',
    authDomain: 'neetra-app.firebaseapp.com',
    storageBucket: 'neetra-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC7ioFy-HIflZ3wYsUjJqm8u2QqCduSBIo',
    appId: '1:113248530077:android:fa98e90b79a8bedff46e74',
    messagingSenderId: '113248530077',
    projectId: 'neetra-app',
    storageBucket: 'neetra-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyChy5V0zL8c_j1K3hrf75qrF-JMrCr1m9U',
    appId: '1:113248530077:ios:eab1f64a195887fdf46e74',
    messagingSenderId: '113248530077',
    projectId: 'neetra-app',
    storageBucket: 'neetra-app.appspot.com',
    iosBundleId: 'com.example.modernlogintute',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyChy5V0zL8c_j1K3hrf75qrF-JMrCr1m9U',
    appId: '1:113248530077:ios:eab1f64a195887fdf46e74',
    messagingSenderId: '113248530077',
    projectId: 'neetra-app',
    storageBucket: 'neetra-app.appspot.com',
    iosBundleId: 'com.example.modernlogintute',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBS2INIKuD8gI4YWocPJ9dchCaki-WUr4U',
    appId: '1:113248530077:web:9b51c27bdf5ea7daf46e74',
    messagingSenderId: '113248530077',
    projectId: 'neetra-app',
    authDomain: 'neetra-app.firebaseapp.com',
    storageBucket: 'neetra-app.appspot.com',
  );
}
