import 'package:flutter/material.dart';
import 'package:hello_world_1/Pages/home_page.dart';
import 'package:hello_world_1/Pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world_1/utils/routes.dart';
import 'package:hello_world_1/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
