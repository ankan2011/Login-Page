import 'package:blog_app/Check_fun/wrapper.dart';
import 'package:blog_app/EmailAuth/forgetPassword.dart';

// import 'package:blog_app/Phone_auth/home.dart';
import 'package:blog_app/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(

      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
