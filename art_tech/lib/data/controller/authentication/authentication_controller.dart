// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../core/common_functions.dart';
import '../../../core/common_widgets.dart';
import '../../../core/constants.dart';

class Authentication {
  final firstName;
  final lastName;
  final gender;
  final email;
  final password;

  Authentication(
      {this.firstName, this.lastName, this.gender, this.email, this.password});
}

class RegisterUser {
  Future<void> registerUser(context, String userName, String userPassword,
      String gender, String userEmail, String password) async {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return kLoadingIndicator;
        });

    //register user
    Future.delayed(const Duration(seconds: 2));
    Navigator.pop(context);

    showSnackBar(
        context, 'Registered Successfully', AppColors().kSnackBarSuccessColor);

    Navigator.pushNamed(context, '/loginPage');
  }

  Future<Authentication> registerUserl(
    userFirstName,
    userlastName,
    userGender,
    userEmail,
    userPassword,
  ) async {
    final userData = Authentication(
        firstName: userFirstName,
        lastName: userlastName,
        gender: userGender,
        email: userEmail,
        password: userPassword);
    return userData;
  }
}

class loginUser {}
