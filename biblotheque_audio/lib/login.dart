// import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';
import 'register.dart';
import 'utils.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _telTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode focus = FocusScope.of(context);
        if (!focus.hasPrimaryFocus) {
          focus.unfocus();
        }
      },
      child: Scaffold(
          body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade800,
              Colors.deepPurple.shade200,
            ],
          ),
        ),
        child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/login.jpg"),
                const SizedBox(height: 30),
                reusableTextField(
                    "Telephone", Icons.phone, false, true, _telTextController),
                const SizedBox(height: 20),
                reusableTextField("Password", Icons.lock, true, false,
                    _passwordTextController),
                const SizedBox(height: 20),
                connectButton(context, true, () async {
                  // 2- Initializing login function with firebase
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: "${_telTextController.text}@biblio.mr",
                          password: _passwordTextController.text)
                      .then((UserCredential userCredential) async {
                    String uid = userCredential.user!.uid;
                    final sharedPref = await SharedPreferences.getInstance();
                    sharedPref.setString("UID", uid);
                    Get.to(const HomePage());
                  }).onError((error, stackTrace) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("Error",
                                style: TextStyle(color: Colors.black)),
                            content: const Text("Wrong credentials!",
                                style: TextStyle(color: Colors.red)),
                            actions: [
                              TextButton(
                                child: const Text("OK"),
                                onPressed: () {
                                  Get.to(const Login());
                                },
                              ),
                            ],
                          );
                        });
                  });
                }),
                registerOption(context)
              ],
            )),
      )),
    );
  }
}

Row registerOption(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Don't have account?",
          style: TextStyle(color: Colors.white70)),
      GestureDetector(
        onTap: () {
          Get.to(const Register());
        },
        child: const Text(
          " Register",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}
