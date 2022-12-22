import 'package:flutter/material.dart';
import 'package:isaac1/signup.dart';

import 'login.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h * 0.8,
              width: w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  image: DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage(
                        "assets/images/bluegrad.jpg",
                      ),
                      colorFilter:
                          ColorFilter.mode(Colors.red, BlendMode.saturation),
                      fit: BoxFit.cover),
                  color: Colors.transparent),
              child: Column(
                children: [
                  SizedBox(height: h * 0.059),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.logout),
                        iconSize: 30,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage(
                                        showSigninusPage: () {},
                                      )));
                        },
                      )
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.logout),
                    iconSize: 30,
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SigninusPage(
                                    showLoginPage: () {},
                                  )));
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: w * 0.5),
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 90,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: h * 0.131,
              decoration: BoxDecoration(color: Colors.transparent),
            ),
            IconButton(
              icon: Icon(Icons.logout),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage(
                              showSigninusPage: () {},
                            )));
              },
            )
          ],
        ),
      ),
    );
  }
}
