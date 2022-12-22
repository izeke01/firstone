import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:isaac1/login.dart';

import 'mainpage.dart';

class SigninusPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const SigninusPage({Key? key, required this.showLoginPage}) : super(key: key);

  @override
  State<SigninusPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninusPage> {
  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _secondNameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _firstNameController.dispose();
    _secondNameController.dispose();
    _ageController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
    Navigator.pop(context, MaterialPageRoute(builder: (context) => MainPage()));
  }

  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: h * 0.4),
                TextField(
                  controller: _firstNameController,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.email, color: Colors.deepPurpleAccent),
                      labelText: "Enter your FirstName"),
                ),
                TextField(
                  controller: _secondNameController,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.email, color: Colors.deepPurpleAccent),
                      labelText: "Enter your LastName"),
                ),
                TextField(
                  controller: _ageController,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.email, color: Colors.deepPurpleAccent),
                      labelText: "Enter your Age"),
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.email, color: Colors.deepPurpleAccent),
                      labelText: "Enter your Email"),
                ),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.password, color: Colors.deepPurpleAccent),
                      labelText: "Enter your Password"),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                GestureDetector(
                    onTap: signUp,
                    child: Row(children: [
                      SizedBox(width: w * 0.13),
                      Container(
                          width: w * 0.5,
                          height: h * 0.08,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.deepPurpleAccent),
                          child: Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ))
                    ])),
                SizedBox(
                  height: h * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage(
                                        showSigninusPage: () {},
                                      )));
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
