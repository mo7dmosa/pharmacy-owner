import 'package:flutter/material.dart';
import 'package:pharmcy_owner/screens/app/bottom_navigation/bottom_navigation_screen.dart';
import 'package:pharmcy_owner/screens/app/bottom_navigation/home_screen.dart';
import 'package:pharmcy_owner/screens/launch_screen.dart';
import 'package:pharmcy_owner/screens/onboarding_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/on_boarding_screen': (context) => const OnBoardingScreen(),
        '/bottom_navigation_screen': (context) => const BottomNavigationScreen(),
        '/home_screen': (context) => const HomeScreen(),
      },
    );
  }
}
