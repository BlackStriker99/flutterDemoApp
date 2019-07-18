import 'package:flutter/material.dart';
import 'constant/Constants.dart';
import 'LoginPage.dart';



class LoginApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: new ThemeData(
        primaryColor: appDarkGreyColor,
      ),
      home: LoginPage(),
    );
  }

}