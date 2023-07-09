import 'package:art_tech/presentation/screens/login/bloc/login_bloc.dart';
import 'package:art_tech/presentation/screens/registration/bloc/registration_bloc.dart';
import 'package:art_tech/presentation/screens/registration/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/router.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LogInBloc>(lazy: false, create: (context) => LogInBloc()),
        BlocProvider<RegistrationBloc>(
            lazy: false, create: (context) => RegistrationBloc()),
      ],
      //create: (context) => SubjectBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SignUpPage(),
        routes: router,
      ),
    );
  }
}
