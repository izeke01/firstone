import 'package:flutter/material.dart';
import 'package:isaac1/mathematics.dart';
import 'package:isaac1/physics.dart';

import 'english.dart';

class FavouritePage extends StatelessWidget {
  FavouritePage({super.key});

  List<Tab> tabs = [
    Tab(child: Text("Mathematics")),
    Tab(child: Text("English")),
    Tab(child: Text("Physics")),
    Tab(child: Text("Chemistry")),
    Tab(child: Text("Biology")),
    Tab(child: Text("Commerce")),
  ];

  List<Widget> tabsContent = [
    MathematicsPage(),
    EnglishPage(),
    PhysicsPage(),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.pink,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.red,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.blue,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(120),
              child: TabBar(
                indicatorWeight: 5,
                tabs: tabs,
                indicatorColor: Colors.white,
                isScrollable: true,
              ),
            ),
          ),
          body: TabBarView(children: tabsContent),
        ));
  }
}
