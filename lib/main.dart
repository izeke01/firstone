import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isaac1/mainpage.dart';
import 'package:isaac1/mathematics.dart';
import 'package:isaac1/profile_page.dart';
import 'package:isaac1/user_preferences.dart';
import 'edit_profile_page.dart';
import 'login.dart';
import 'themes.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await UserPreferences.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();

    return ThemeProvider(
      initTheme: MyThemes.darkTheme,
      child: MaterialApp(
          theme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
          title: 'Isaac1',
          debugShowCheckedModeBanner: false,
          home: MainPage()),
    );
  }
}
