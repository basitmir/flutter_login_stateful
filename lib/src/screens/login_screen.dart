import 'package:flutter/material.dart';
import '../mixins/validate_mixin.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidateMixin {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(50.00),
      child: Align(
        alignment: Alignment.center,
        // margin: EdgeInsets.all(50.00),
        child: Form(
            key: formKey,
            child: Column(children: [
              // Container(margin: EdgeInsets.only(bottom: 10.00)),
              emailFeild(),
              Container(margin: EdgeInsets.only(bottom: 10.00)),
              passwordFeild(),
              Container(margin: EdgeInsets.only(bottom: 10.00)),
              submitButton(),
            ])),
      ),
    );
  }

  Widget emailFeild() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        icon: Icon(
          Icons.email,
          color: Colors.red[200],
        ),
        labelText: 'Email Address',
        hintText: 'abc@gmail.com',
      ),
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordFeild() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(
            Icons.vpn_key,
            color: Colors.red[200],
          ),
          labelText: 'Password',
          hintText: 'password'),
      validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.red[200],
      child: Text('SUBMIT'),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('My email is $email and my password is $password');
        }
      },
    );
  }
}
