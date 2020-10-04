import 'package:flutter/material.dart';
import './screens/login_screen.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  // final Future user;
  //Login({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SignIn',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
