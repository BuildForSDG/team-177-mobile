import 'package:flutter/material.dart';
import 'package:kenright/ui/widgets/input_field.dart';
import 'package:kenright/ui/widgets/pass_field.dart';
import 'package:kenright/ui/widgets/rounded_btn.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          width: double.infinity,
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: size.height * 0.05),
                Text(
                  "SIGNUP",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.03),
                Image.asset(
                  'assets/images/login.png',
                  height: size.height * 0.2,
                ),
                SizedBox(height: size.height * 0.03),
                RoundedInputField(
                  hintText: "First Name",
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "Last Name",
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  icon: Icons.email,
                  hintText: "Email",
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  onChanged: (value) {},
                ),
                RoundedButton(
                  text: "SIGNUP",
                  press: () => Navigator.pushNamed(context, "/home"),
                ),
                SizedBox(height: size.height * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
