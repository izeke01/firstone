import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:isaac1/edit_profile_page.dart';
import 'package:isaac1/mainpage.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showSigninusPage;
  const LoginPage({Key? key, required this.showSigninusPage}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EditProfilePage()));
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                SizedBox(height: h * 0.35),
                Text(
                  "Hello There!",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.email, color: Colors.deepPurpleAccent),
                      labelText: "Enter your Email"),
                ),
                SizedBox(
                  height: h * 0.05,
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
                SizedBox(
                  height: h * 0.05,
                ),
                GestureDetector(
                    onTap: signIn,
                    child: Row(
                      children: [
                        SizedBox(width: w * 0.13),
                        Container(
                            width: w * 0.5,
                            height: h * 0.08,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.deepPurpleAccent),
                            child: Center(
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
