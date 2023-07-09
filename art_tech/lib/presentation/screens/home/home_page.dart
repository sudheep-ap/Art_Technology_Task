import 'package:art_tech/core/constants.dart';
import 'package:art_tech/data/controller/authentication/authentication_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final data = User().getUserData(userDataInstance);
    return Scaffold(
      backgroundColor: AppColors().klightGreyColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hi ${data["firstName"]}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 32, letterSpacing: 2, fontWeight: FontWeight.bold),
            ),
            Text(
              '${data["gender"]}',
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
