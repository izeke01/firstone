import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'NavDrawer.dart';
import 'user_preferences.dart';

class WebHomeScreen extends StatefulWidget {
  const WebHomeScreen({super.key});

  @override
  State<WebHomeScreen> createState() => _WebHomeScreenState();
}

class _WebHomeScreenState extends State<WebHomeScreen> {
  Widget greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return Container(
          child: Row(
        children: [
          Text("Good morning,",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black)),
        ],
      ));
    }
    if (hour < 17) {
      return Container(
          child: Row(
        children: [
          Text("Good Afternoon,",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black)),
        ],
      ));
    }
    return Container(
        child: Row(
      children: [
        Text("Good Evening,",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black)),
      ],
    ));
  }

  final user = UserPreferences.getUser();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return Padding(
              padding: EdgeInsets.only(left: 0, top: 5),
              child: Container(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () => Scaffold.of(context).openDrawer(),
                        icon: Icon(
                          Icons.apps,
                          size: 30,
                          color: Colors.black,
                        )),
                  ],
                ),
              ));
        }),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 30),
                greeting(),
                Text(user.name,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ],
            ),
          ],
        ),
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: "zekewebsitesappsandtechdevcompanyintl.adalo.com/web-app-1",
      ),
    );
  }
}
