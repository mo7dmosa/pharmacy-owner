import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            'Categories',
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),       
  =

      ],
    );
  }
}
