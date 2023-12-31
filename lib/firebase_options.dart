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
    apiKey: 'AIzaSyBmdb8GAXqyOvL-axYlT1qWUy8gBTAqPko',
    appId: '1:290160008044:web:62a53280271d78a0767149',
    messagingSenderId: '290160008044',
    projectId: 'flutter-quiz-b4c84',
    authDomain: 'flutter-quiz-b4c84.firebaseapp.com',
    storageBucket: 'flutter-quiz-b4c84.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCPxFxOXXIofcQak6wK4kgEeEU6d8e2-3U',
    appId: '1:290160008044:android:5cf5108b2299105f767149',
    messagingSenderId: '290160008044',
    projectId: 'flutter-quiz-b4c84',
    storageBucket: 'flutter-quiz-b4c84.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCF90NrzIEo5reryMP8P1EkIqJCLQd12ys',
    appId: '1:290160008044:ios:7a2377856a67cde9767149',
    messagingSenderId: '290160008044',
    projectId: 'flutter-quiz-b4c84',
    storageBucket: 'flutter-quiz-b4c84.appspot.com',
    iosClientId: '290160008044-fif22l6vieh2eirpogaqe7nupfun4lov.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterQuiz',
  );
}
