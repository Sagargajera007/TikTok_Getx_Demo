import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_getx_demo/controller/auth_controller.dart';
import 'package:tiktok_getx_demo/view/screens/auth/signup_screen.dart';

import 'constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    Get.put(AuthController());
  },);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(title: 'TikTok',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroungColor),
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}
