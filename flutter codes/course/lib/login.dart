import 'package:course/homePage.dart';
import 'package:course/register.dart';
import 'package:course/utils.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _telTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Column(
            children: <Widget>[
              logoWidget("images/login.jpg"),
              SizedBox(height: 30),
              reusableTextField(
                  "Telephone", Icons.phone, false, true, _telTextController),
              SizedBox(height: 20),
              reusableTextField(
                  "Password", Icons.lock, true, false, _passwordTextController),
              SizedBox(height: 20),
              connectButton(context, true, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
              RegisterOption(context)
            ],
          )),
    ));
  }
}

Row RegisterOption(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Don't have account?",
          style: TextStyle(color: Colors.white70)),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Register()));
        },
        child: const Text(
          " Register",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}
