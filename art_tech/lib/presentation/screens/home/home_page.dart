import 'package:art_tech/core/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userData = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().kButtonYellowColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hi $userData',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 32, letterSpacing: 2, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
