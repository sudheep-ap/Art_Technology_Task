import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'constants.dart';

// Circular Progress Indicator

Widget kLoadingIndicator = const Center(
    child: SpinKitDualRing(
  //SpinKitFadingCube SpinKitDualRing SpinKitWave SpinKitThreeBounce SpinKitFadingCircle
  //SpinKitDualRing SpinKitThreeBounce
  color: Colors.green,
  // size: 50.0,
));

// Linear Progress Indicator
Widget kLinearLoadingIndicator = LinearProgressIndicator(
    color: Colors.green, backgroundColor: AppColors().kMainBlackColor);
