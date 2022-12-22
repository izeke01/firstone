import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ResultWebScreen extends StatefulWidget {
  const ResultWebScreen({super.key});

  @override
  State<ResultWebScreen> createState() => _ResultWebScreenState();
}

class _ResultWebScreenState extends State<ResultWebScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: "www.google.com",
      ),
    );
  }
}
