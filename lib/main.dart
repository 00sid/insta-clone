import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram0/responsive/responsive_layout_screen.dart';
import 'package:instagram0/screens/login_screen.dart';
import 'package:instagram0/utils/colors.dart';
import './responsive/mobile_screen_layout.dart';
import './responsive/web_screen_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyA4BqmLqKo_K_kF6PqUK5S8cazcjTl7yk0',
        appId: '1:867699422471:web:ebcf5510d875718db941a2',
        messagingSenderId: '867699422471',
        projectId: 'instagram-clone-52e1c',
        storageBucket: "instagram-clone-52e1c.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram clone',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      //   home: const ResponsiveLayout(
      //     mobileScreenLayout: MobileScreenLayout(),
      //     webScreenLayout: WebScreenLayout()//,

      // ),
      home: const LoginScreen(),
    );
  }
}
