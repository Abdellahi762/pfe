import 'package:course/utils.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _telTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _nameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            colors: [Colors.deepPurple.shade800, Colors.deepPurple.shade200],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.1, 20, 0),
          child: Column(children: <Widget>[
            SizedBox(height: 30),
            reusableTextField(
                "Telephone", Icons.phone, false, true, _telTextController),
            SizedBox(height: 20),
            reusableTextField(
                "Nom et Prenom", Icons.person, false, false, _nameTextController),
            SizedBox(height: 20),
            reusableTextField(
                "Password", Icons.lock, true, false, _passwordTextController),
            connectButton(context, false, () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            }),
          ]),
        ),
      ),
    );
  }
}
