import 'package:flutter/material.dart';
import 'package:smart_money_handling/finance_form.dart';
import 'package:smart_money_handling/home_screen.dart';
import 'package:smart_money_handling/login_screen.dart';
import 'package:smart_money_handling/splash_screen.dart';
import 'package:smart_money_handling/welcome_screen.dart';
import 'package:smart_money_handling/nav_menu.dart';
import 'package:smart_money_handling/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.green[900],
            secondary: Colors.green[900]
        ),
      ),
      home: SMHapp(),
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            // Dismiss the keyboard when tapping outside of a text field
            FocusScope.of(context).unfocus();
          },
          child: child,
        );
      },
    );
  }
}

class SMHapp extends StatefulWidget {
  const SMHapp({super.key});

  @override
  State<SMHapp> createState() => _SMHappState();
}

class _SMHappState extends State<SMHapp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}