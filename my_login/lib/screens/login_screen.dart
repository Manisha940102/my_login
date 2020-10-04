import 'dart:convert';

import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_login/models/Objects.dart';
import 'package:my_login/models/invoiceDetailsResponse.dart';
import 'package:my_login/models/userResponse.dart';
import 'package:my_login/services/invoice_service.dart';
import 'package:my_login/utilities/constant.dart';
import 'package:my_login/models/user.dart';
//import 'package:my_login/models/Object.dart';
import 'package:my_login/services/user_service.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
    String accessToken = '';
 // String password = '';
  static final createUserPostUrl =
      'http://162.214.68.103:7004/maxim-api/maxim/api/auth/signin';
  static final createInvoicePostUrl =
      'http://162.214.68.103:7004/maxim-api/maxim/api/v1/invoice/getInvoiceDetails';
  // bool _rememberMe = false;

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'UserName or Email',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter your Email or UserName',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            controller: passwordController,
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Enter your Password',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 2.0,
        onPressed: () async {
          /* setState(() {
            email = emailController.text;
            password = passwordController.text;
          }); */

          User userPost = new User(
              email: emailController.text, password: passwordController.text);
          UserResponse userResponse =
              await createPost(createUserPostUrl, body: userPost.toJson());
          print(userResponse.accessToken);
          print(userResponse.accessToken);
          print(userResponse.userPermissions);
          accessToken =userResponse.accessToken;
         
          if (userResponse.accessToken != null &&
              userResponse.tokenType != null) {
                InvoiceDetailsResponse invoiceDetailsResponse =
              await createInvoicePost(createInvoicePostUrl,accessToken );
               
              print(invoiceDetailsResponse.success);
              print(invoiceDetailsResponse.object);
              print(invoiceDetailsResponse.message);
             // final invoiceDetailsObject = json.decode(invoiceDetailsResponse.object);
             // print(invoiceDetailsObject);
              Objects objects = Objects.fromJson(json.decode(invoiceDetailsResponse.object));
              print(objects);
              print(objects.salesOwner);
              print(objects.department);
             
              String salesOwner = jsonEncode(objects.salesOwner.toJson());
              var department = jsonEncode(objects.department.toJson());
              print(salesOwner);
              print(department);
              //String hello = "Hello";
              
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeForm( salesOwner :salesOwner,department: department)),
            ); 
           
          } else {
            showSimpleFlushbar(context);
          }
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF73AEF5),
                      Color(0xFF61A4F1),
                      Color(0xFF478DE0),
                      Color(0xFF398AE5), 
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                     SizedBox(height: 30.0),
                      _buildEmailTF(),
                        SizedBox(
                        height: 30.0,
                      ),  
                      _buildPasswordTF(),
                      _buildLoginBtn()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void showSimpleFlushbar(BuildContext context) {
    Flushbar(
      // There is also a messageText property for when you want to
      // use a Text widget and not just a simple String
      message: 'Incorrect UserName or Password!!',
      // Even the button can be styled to your heart's content
      mainButton: FlatButton(
        child: Text(
          'Access Denied',
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        onPressed: () {},
      ),
      duration: Duration(seconds: 3),
      // Show it with a cascading operator
    )..show(context);
  }
}
