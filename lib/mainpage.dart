import 'package:flutter/material.dart';
import 'package:isaac1/favorite.dart';
import 'package:isaac1/homescreen2.dart';
import 'package:isaac1/message.dart';
import 'package:isaac1/profile_page.dart';

import 'home_screen.dart';
import 'resultscreen.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    WebHomeScreen(),
    FavouritePage(),
    ResultWebScreen(),
    ProfilePage(),
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          enableFeedback: true,
          type: BottomNavigationBarType.shifting,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Color.fromARGB(255, 41, 3, 255),
          unselectedItemColor: Colors.black,
          elevation: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.book_outlined), label: "Subjects"),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_city_outlined), label: "Results"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
