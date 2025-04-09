// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = const FirebaseOptions(
    apiKey: 'AIzaSyB9EMSkqHNc20LrAUkctt202OfID-xj7wI',
    appId: '1:960633407637:web:6b51985a2e5393e808f39c',
    messagingSenderId: '960633407637',
    projectId: 'grocery-planner-fe17d',
    authDomain: 'grocery-planner-fe17d.firebaseapp.com',
    storageBucket: 'grocery-planner-fe17d.firebasestorage.app',
    measurementId: 'G-KVG4MDTP6Y',
  );

  static const FirebaseOptions android = const FirebaseOptions(
    apiKey: 'AIzaSyB7AlK3sAboaFC3vNj4KiB7vKmUW6wJNvY',
    appId: '1:960633407637:android:64dcf667cfdb3fac08f39c',
    messagingSenderId: '960633407637',
    projectId: 'grocery-planner-fe17d',
    storageBucket: 'grocery-planner-fe17d.firebasestorage.app',
  );

  static const FirebaseOptions ios = const FirebaseOptions(
    apiKey: 'YOUR_IOS_API_KEY', // Replace with your actual iOS API key
    appId: 'YOUR_IOS_APP_ID', // Replace with your actual iOS app ID
    messagingSenderId: 'YOUR_MESSAGING_SENDER_ID', // Replace with your actual messaging sender ID
    projectId: 'YOUR_PROJECT_ID', // Replace with your actual project ID
    storageBucket: 'YOUR_STORAGE_BUCKET', // Replace with your actual storage bucket
  );

  static const FirebaseOptions macos = const FirebaseOptions(
    apiKey: 'YOUR_MACOS_API_KEY', // Replace with your actual macOS API key
    appId: 'YOUR_MACOS_APP_ID', // Replace with your actual macOS app ID
    messagingSenderId: 'YOUR_MESSAGING_SENDER_ID', // Replace with your actual messaging sender ID
    projectId: 'YOUR_PROJECT_ID', // Replace with your actual project ID
    storageBucket: 'YOUR_STORAGE_BUCKET', // Replace with your actual storage bucket
  );

  static const FirebaseOptions windows = const FirebaseOptions(
    apiKey: 'YOUR_WINDOWS_API_KEY', // Replace with your actual Windows API key
    appId: 'YOUR_WINDOWS_APP_ID', // Replace with your actual Windows app ID
    messagingSenderId: 'YOUR_MESSAGING_SENDER_ID', // Replace with your actual messaging sender ID
    projectId: 'YOUR_PROJECT_ID', // Replace with your actual project ID
    storageBucket: 'YOUR_STORAGE_BUCKET', // Replace with your actual storage bucket
  );

  static const FirebaseOptions linux = const FirebaseOptions(
    apiKey: 'YOUR_LINUX_API_KEY', // Replace with your actual Linux API key
    appId: 'YOUR_LINUX_APP_ID', // Replace with your actual Linux app ID
    messagingSenderId: 'YOUR_MESSAGING_SENDER_ID', // Replace with your actual messaging sender ID
    projectId: 'YOUR_PROJECT_ID', // Replace with your actual project ID
    storageBucket: 'YOUR_STORAGE_BUCKET', // Replace with your actual storage bucket
  );
}
