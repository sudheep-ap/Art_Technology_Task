// ignore_for_file: prefer_typing_uninitialized_variables

Authentication userDataInstance = Authentication();

class Authentication {
  final firstName;
  final lastName;
  final gender;
  final email;
  final password;

  Authentication(
      {this.firstName, this.lastName, this.gender, this.email, this.password});
}

class User {
  //To save  data
  registerUser(String userFirstName, String userLastName, String userGender,
      String userEmail, String userPassword) {
    userDataInstance = Authentication(
        firstName: userFirstName,
        lastName: userLastName,
        gender: userGender,
        email: userEmail,
        password: userPassword);
    print(userDataInstance);
    return userDataInstance;
  }

//To retrieve data
  Map getUserData(Authentication data) {
    Map userData = {
      'firstName': data.firstName,
      'lastName': data.lastName,
      'gender': data.gender,
      'email': data.email,
      'password': data.password
    };
    print(data);
    print(userData);
    return userData;
  }
  // Map getUserData(String userFirstName, String userLastName, String userGender,
  //     String userEmail, String userPassword) {
  //   final userData = Authentication(
  //       firstName: userFirstName,
  //       lastName: userLastName,
  //       gender: userGender,
  //       email: userEmail,
  //       password: userPassword);
  //   return {
  //     'firstName': userData.firstName,
  //     'lastName': userData.lastName,
  //     'gender': userData.gender,
  //     'email': userData.email,
  //     'password': userData.password
  //   };
  // }
}

// class RegisterUser {
//   Future<void> registerUser(context, String userName, String userPassword,
//       String gender, String userEmail, String password) async {
//     showDialog(
//         barrierDismissible: false,
//         context: context,
//         builder: (context) {
//           return kLoadingIndicator;
//         });

//     //register user
//     Future.delayed(const Duration(seconds: 2));
//     Navigator.pop(context);

//     showSnackBar(
//         context, 'Registered Successfully', AppColors().kSnackBarSuccessColor);

//     Navigator.pushNamed(context, '/loginPage');
//   }

//   Future<Authentication> registerUserl(
//     userFirstName,
//     userlastName,
//     userGender,
//     userEmail,
//     userPassword,
//   ) async {
//     final userData = Authentication(
//         firstName: userFirstName,
//         lastName: userlastName,
//         gender: userGender,
//         email: userEmail,
//         password: userPassword);
//     return userData;
//   }
// }

// class loginUser {}
