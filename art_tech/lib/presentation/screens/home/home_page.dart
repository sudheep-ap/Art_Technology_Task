import 'package:art_tech/data/core/common_widgets.dart';
import 'package:art_tech/data/core/constants.dart';
import 'package:art_tech/domian/models/authentication_model.dart';
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
    final userDatas = User().getUserData(userDataInstance);
    return Scaffold(
      backgroundColor: AppColors().kMainYellowColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hi - ${userDatas["firstName"]} ${userDatas["lastName"]}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 32, letterSpacing: 2, fontWeight: FontWeight.bold),
            ),
            kSizedBox20,
            Text(
              '${userDatas["gender"]}',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors().kTextWhiteColor,
                  fontSize: 18,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
            ),
            kSizedBox20,
            Text(
              '${userDatas["email"]}',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors().kTextWhiteColor,
                  fontSize: 18,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
