// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:complain_app/global_string.dart';
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          // 'DefaultFirebaseOptions have not been configured for macos - '
          // 'you can reconfigure this by running the FlutterFire CLI again.'
          targetPlatformMacOs,
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          // 'DefaultFirebaseOptions have not been configured for windows - '
          // 'you can reconfigure this by running the FlutterFire CLI again.'
         targetPlatformWindowOs,
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          // 'DefaultFirebaseOptions have not been configured for linux - '
          // 'you can reconfigure this by running the FlutterFire CLI again.'
          targetPlatformLinuxOs,
        );
      default:
        throw UnsupportedError(
          //'DefaultFirebaseOptions are not supported for this platform.'
          defaultMsg
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCf6nonJ7tqUbKwSFMPay7sGGLhz5nQT40',
    appId: '1:541794688793:android:e7dcdda92458b24a1e2f88',
    messagingSenderId: '541794688793',
    projectId: 'ssipproject-a9d78',
    storageBucket: 'ssipproject-a9d78.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDF5kacvh99QUQGbF_NGqGrGidIa0S6Tb8',
    appId: '1:541794688793:ios:5d744f0476e1eafd1e2f88',
    messagingSenderId: '541794688793',
    projectId: 'ssipproject-a9d78',
    storageBucket: 'ssipproject-a9d78.appspot.com',
    iosBundleId: 'com.example.complainApp',
  );
}
