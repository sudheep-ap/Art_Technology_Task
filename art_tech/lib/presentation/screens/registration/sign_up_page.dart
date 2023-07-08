// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:art_tech/core/common_functions.dart';
import 'package:flutter/material.dart';

import '../../../data/controller/authentication/authentication_controller.dart';
import '../../../core/constants.dart';
import '../../widgets/textFiled_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  final userFirstName = TextEditingController();
  final userLastName = TextEditingController();
  final userEmail = TextEditingController();
  final userPassword = TextEditingController();

  bool obscurePass = true;
// Registration page should have
// First Name
// Last Name
// Gender(Radio button)
// Email
// Password
// Submit
  String _selectedGenderOption = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SafeArea(
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Sign up',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: AppColors().kTextGreyColor,
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          TextFieldWidget(
                            controller: userFirstName,
                            hintText: 'First Name',
                            validatorMessage: 'Please enter your first name',
                            prefixIcon: Icons.person,
                          ),
                          const SizedBox(height: 20),
                          TextFieldWidget(
                            controller: userLastName,
                            hintText: 'Last Name ',
                            validatorMessage: 'Please enter your last name',
                            prefixIcon: Icons.person,
                          ),

                          const SizedBox(height: 20),

                          Container(
                            padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                            decoration: BoxDecoration(
                                color: AppColors().klightGreyColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.assignment_ind_outlined,
                                      color: Colors.blueGrey[600],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Gender',
                                      style: TextStyle(
                                          letterSpacing: 0.6,
                                          color: AppColors().kTextGreyColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text('M'),
                                    Radio(
                                      value: 'Male',
                                      groupValue: _selectedGenderOption,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedGenderOption =
                                              value.toString();
                                        });
                                      },
                                    ),
                                    const SizedBox(width: 10),
                                    const Text('F'),
                                    Radio(
                                      value: 'Female',
                                      groupValue: _selectedGenderOption,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedGenderOption =
                                              value.toString();
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 20),
                          TextFieldWidget(
                            controller: userEmail,
                            hintText: 'Email',
                            validatorMessage: 'Please enter your email',
                            prefixIcon: Icons.email_outlined,
                          ),

                          const SizedBox(height: 20),
                          TextFieldWidget(
                            controller: userPassword,
                            hintText: 'Password',
                            validatorMessage: 'Please enter your password',
                            prefixIcon: Icons.password_rounded,
                            isPassword: true,
                          ),

                          const SizedBox(height: 20),

                          // const SizedBox(height: 20),
                        ],
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print('success');

                            if (_selectedGenderOption.isNotEmpty) {
                              RegisterUser().registerUser(
                                context,
                                userFirstName.text,
                                userLastName.text,
                                _selectedGenderOption,
                                userEmail.text,
                                userPassword.text,
                              );
                              Navigator.pushNamed(context, '/loginPage');
                            } else {
                              showSnackBar(
                                  context,
                                  'Please enter choose a gender',
                                  AppColors().kSnackBarErrorColor);
                            }
                          }
                        },
                        // ignore: sort_child_properties_last
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Register',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    color: Colors.white)),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors().kButtonYellowColor,
                            // elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            padding: const EdgeInsets.fromLTRB(22, 18, 22, 15)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
