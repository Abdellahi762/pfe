import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'utils.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _telTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _nameTextController = TextEditingController();

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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Register",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
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
            child: Column(children: <Widget>[
              logoWidget("assets/images/login.jpg"),
              const SizedBox(height: 30),
              reusableTextField(
                  "Telephone", Icons.phone, false, true, _telTextController),
              const SizedBox(height: 20),
              reusableTextField("Nom et Prenom", Icons.person, false, false,
                  _nameTextController),
              const SizedBox(height: 20),
              reusableTextField(
                  "Password", Icons.lock, true, false, _passwordTextController),
              connectButton(context, false, () {
                if (_telTextController.text == '') {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          title: Text("Error",
                              style: TextStyle(color: Colors.black)),
                          content: Text("Empty!",
                              style: TextStyle(color: Colors.red)),
                        );
                      });
                } else {
                  // 2- Initializing registre function with firebase
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: "${_telTextController.text}@biblio.mr",
                          password: _passwordTextController.text)
                      .then((value) {
                    // User registration successful, now add the name to Firestore
                    String userId = value.user!.uid;
                    String name = _nameTextController.text;

                    FirebaseFirestore.instance
                        .collection('Utilisateurs')
                        .doc(userId)
                        .set({'nom': name, 'id': userId}).then((_) {
                      // Name added to Firestore successfully
                      Get.to(const Login());
                    }).catchError((error) {
                      // Failed to add name to Firestore
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Error",
                                  style: TextStyle(color: Colors.black)),
                              content: const Text(
                                  "User Could not ..!",
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
                  }).onError((error, stackTrace) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("Error",
                                style: TextStyle(color: Colors.black)),
                            content: const Text(
                                "Entered credentials are not correct!",
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
                }
              }),
            ]),
          ),
        ),
      ),
    );
  }
}


// FirebaseAuth.instance
//     .createUserWithEmailAndPassword(
//         email: "${_telTextController.text}@biblio.mr",
//         password: _passwordTextController.text)
//     .then((value) {
//       // User registration successful, now add the name to Firestore
//       String userId = value.user.uid;
//       String name = _nameTextController.text;

//       FirebaseFirestore.instance
//           .collection('Users')
//           .doc(userId)
//           .set({'name': name})
//           .then((_) {
//             // Name added to Firestore successfully
//             Get.to(const Login());
//           })
//           .catchError((error) {
//             // Failed to add name to Firestore
//             print('Failed to add name to Firestore: $error');
//           });
//     })
//     .catchError((error) {
//       // User registration failed
//       print('User registration failed: $error');
//     });