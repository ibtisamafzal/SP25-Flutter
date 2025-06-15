
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
    apiKey: 'AIzaSyDPGbCqgGGVZn4hBeujaAaAHaAr-rK9BHc',
    appId: '1:525105516579:web:cf5d6ab6104cbe54a4a196',
    messagingSenderId: '525105516579',
    projectId: 'class-demo-app',
    authDomain: 'class-demo-app.firebaseapp.com',
    storageBucket: 'class-demo-app.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhJcSqNbhCw0rpG2kW-8Dp1APxSPYytr8',
    appId: '1:525105516579:android:2f21675bf3876fa2a4a196',
    messagingSenderId: '525105516579',
    projectId: 'class-demo-app',
    storageBucket: 'class-demo-app.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCdLGZ95gaQ48tFg8iyWrJRAAvIaYCyzG0',
    appId: '1:525105516579:ios:a2348a657a6fa8f1a4a196',
    messagingSenderId: '525105516579',
    projectId: 'class-demo-app',
    storageBucket: 'class-demo-app.firebasestorage.app',
    iosBundleId: 'com.jamil.firebaseConnectionApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCdLGZ95gaQ48tFg8iyWrJRAAvIaYCyzG0',
    appId: '1:525105516579:ios:a2348a657a6fa8f1a4a196',
    messagingSenderId: '525105516579',
    projectId: 'class-demo-app',
    storageBucket: 'class-demo-app.firebasestorage.app',
    iosBundleId: 'com.jamil.firebaseConnectionApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDPGbCqgGGVZn4hBeujaAaAHaAr-rK9BHc',
    appId: '1:525105516579:web:58846927a7412d44a4a196',
    messagingSenderId: '525105516579',
    projectId: 'class-demo-app',
    authDomain: 'class-demo-app.firebaseapp.com',
    storageBucket: 'class-demo-app.firebasestorage.app',
  );
}
