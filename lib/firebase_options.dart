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
    apiKey: 'AIzaSyDwsnNxq_DFZSztIIDm2LhFWL8_WOTdVhw',
    appId: '1:138980050488:web:12161416551877dd3248cd',
    messagingSenderId: '138980050488',
    projectId: 'fir-0072',
    authDomain: 'fir-0072.firebaseapp.com',
    storageBucket: 'fir-0072.appspot.com',
    measurementId: 'G-DEZT8TVNDT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCd-bQG2neeT51XApyrP6LDSCwOsj5KteM',
    appId: '1:138980050488:android:41b0ebf8636929963248cd',
    messagingSenderId: '138980050488',
    projectId: 'fir-0072',
    storageBucket: 'fir-0072.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBtT9nFQ2k3lA2hbid9BrL_PqRKqTx9Eio',
    appId: '1:138980050488:ios:107bccf8d43faff33248cd',
    messagingSenderId: '138980050488',
    projectId: 'fir-0072',
    storageBucket: 'fir-0072.appspot.com',
    iosBundleId: 'com.example.flutterlist',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBtT9nFQ2k3lA2hbid9BrL_PqRKqTx9Eio',
    appId: '1:138980050488:ios:107bccf8d43faff33248cd',
    messagingSenderId: '138980050488',
    projectId: 'fir-0072',
    storageBucket: 'fir-0072.appspot.com',
    iosBundleId: 'com.example.flutterlist',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDwsnNxq_DFZSztIIDm2LhFWL8_WOTdVhw',
    appId: '1:138980050488:web:771dac8cc24e86f93248cd',
    messagingSenderId: '138980050488',
    projectId: 'fir-0072',
    authDomain: 'fir-0072.firebaseapp.com',
    storageBucket: 'fir-0072.appspot.com',
    measurementId: 'G-45WCPEJ78C',
  );

}