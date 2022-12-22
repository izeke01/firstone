import 'package:flutter/material.dart';

class PhysicsPage extends StatelessWidget {
  const PhysicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: h * 0.25,
                width: w,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/abacus.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.grey),
                child: const Center(
                  child: Text(
                    "",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: h * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: w * 0.019),
              Text(
                "Class",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: w * 0.25),
              const Text(
                "First Term",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: h * 0.035),
          Row(
            children: [
              SizedBox(width: w * 0.03),
              const Text(
                "Scheme Of Work",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: h * 0.045),
          Material(
            borderRadius: BorderRadius.circular(22),
            elevation: 10,
            child: Container(
              height: h * 0.1,
              width: w * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.0345,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/books.png")),
                        color: Colors.transparent),
                    height: h * 0.07,
                    width: w * 0.135,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.035),
          Material(
            borderRadius: BorderRadius.circular(22),
            elevation: 10,
            child: Container(
              height: h * 0.1,
              width: w * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.0345,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/books.png")),
                        color: Colors.transparent),
                    height: h * 0.07,
                    width: w * 0.135,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.045),
          Material(
            borderRadius: BorderRadius.circular(22),
            elevation: 10,
            child: Container(
              height: h * 0.1,
              width: w * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.0345,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/books.png")),
                        color: Colors.transparent),
                    height: h * 0.07,
                    width: w * 0.135,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.045),
          Material(
            borderRadius: BorderRadius.circular(22),
            elevation: 10,
            child: Container(
              height: h * 0.1,
              width: w * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.0345,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/books.png")),
                        color: Colors.transparent),
                    height: h * 0.07,
                    width: w * 0.135,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.045),
          Material(
            borderRadius: BorderRadius.circular(22),
            elevation: 10,
            child: Container(
              height: h * 0.1,
              width: w * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.0345,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/books.png")),
                        color: Colors.transparent),
                    height: h * 0.07,
                    width: w * 0.135,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.035),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: w * 0.019),
              Text(
                "     ",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: w * 0.25),
              const Text(
                "Second Term",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: h * 0.035),
          Row(
            children: [
              SizedBox(width: w * 0.03),
              const Text(
                "Scheme Of Work",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: h * 0.035),
          Material(
            borderRadius: BorderRadius.circular(22),
            elevation: 10,
            child: Container(
              height: h * 0.1,
              width: w * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.0345,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/books.png")),
                        color: Colors.transparent),
                    height: h * 0.07,
                    width: w * 0.135,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.035),
          Material(
            borderRadius: BorderRadius.circular(22),
            elevation: 10,
            child: Container(
              height: h * 0.1,
              width: w * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.0345,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/books.png")),
                        color: Colors.transparent),
                    height: h * 0.07,
                    width: w * 0.135,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.045),
          Material(
            borderRadius: BorderRadius.circular(22),
            elevation: 10,
            child: Container(
              height: h * 0.1,
              width: w * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.0345,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/books.png")),
                        color: Colors.transparent),
                    height: h * 0.07,
                    width: w * 0.135,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.045),
          Material(
            borderRadius: BorderRadius.circular(22),
            elevation: 10,
            child: Container(
              height: h * 0.1,
              width: w * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.0345,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/books.png")),
                        color: Colors.transparent),
                    height: h * 0.07,
                    width: w * 0.135,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.045),
          Material(
            borderRadius: BorderRadius.circular(22),
            elevation: 10,
            child: Container(
              height: h * 0.1,
              width: w * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.0345,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/books.png")),
                        color: Colors.transparent),
                    height: h * 0.07,
                    width: w * 0.135,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.035),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: w * 0.019),
              Text(
                "     ",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: w * 0.25),
              const Text(
                "Third Term",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: h * 0.035),
          Row(
            children: [
              SizedBox(width: w * 0.03),
              const Text(
                "Scheme Of Work",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: h * 0.035),
          Material(
            borderRadius: BorderRadius.circular(22),
            elevation: 10,
            child: Container(
              height: h * 0.1,
              width: w * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.0345,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/books.png")),
                        color: Colors.transparent),
                    height: h * 0.07,
                    width: w * 0.135,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.035),
          Material(
            borderRadius: BorderRadius.circular(22),
            elevation: 10,
            child: Container(
              height: h * 0.1,
              width: w * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.0345,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/books.png")),
                        color: Colors.transparent),
                    height: h * 0.07,
                    width: w * 0.135,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.045),
          Material(
            borderRadius: BorderRadius.circular(22),
            elevation: 10,
            child: Container(
              height: h * 0.1,
              width: w * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.0345,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/books.png")),
                        color: Colors.transparent),
                    height: h * 0.07,
                    width: w * 0.135,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.045),
          Material(
            borderRadius: BorderRadius.circular(22),
            elevation: 10,
            child: Container(
              height: h * 0.1,
              width: w * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.0345,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/books.png")),
                        color: Colors.transparent),
                    height: h * 0.07,
                    width: w * 0.135,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.045),
          Material(
            borderRadius: BorderRadius.circular(22),
            elevation: 10,
            child: Container(
              height: h * 0.1,
              width: w * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.0345,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/books.png")),
                        color: Colors.transparent),
                    height: h * 0.07,
                    width: w * 0.135,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
