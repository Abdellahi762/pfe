import 'package:biblotheque_audio/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

Future<void> main() async {
// 1- Initializing frebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final sharedPref = await SharedPreferences.getInstance();
  String? uid = sharedPref.getString("UID");
  runApp(MyApp(uid: uid));
}

class MyApp extends StatelessWidget {
  final String? uid;
  const MyApp({Key? key, this.uid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bibliothèque Audio',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: uid == null ? const Login() : const HomePage(),
      // home: const Login(),
    );
  }
}
