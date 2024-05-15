import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ridepal/login_sign_up/login.dart';
import 'package:ridepal/navbar/app_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Create an instance of StatefulNavigationShell here
    final GoRouter navigationShell = AppNavigation.router;

    return MaterialApp(
      theme: ThemeData(
        listTileTheme: ListTileThemeData(tileColor: Colors.grey.shade200),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            wordSpacing: 5,
          ),
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(color: Colors.white),
          unselectedIconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Loginpage(
        navigationShell: navigationShell,
      ),
    );
  }
}
