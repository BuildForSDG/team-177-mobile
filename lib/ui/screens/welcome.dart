import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kenright/ui/widgets/rounded_btn.dart';
import 'package:kenright/utils/constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white));
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        color: Colors.white,
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // SizedBox(height: 200),
            Text(
              "Kenright",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset("assets/images/welcome3.png"),
            Container(
              // height: 30,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RoundedButton(
                      text: "LOGIN",
                      press: () => Navigator.pushNamed(context, "/login"),
                    ),
                    RoundedButton(
                      text: "SIGN UP",
                      color: kPrimaryLightColor,
                      textColor: Colors.black,
                      press: () => Navigator.pushNamed(context, "/signup"),
                    ),
                  ]),
            )
          ],
        ),
      )),
    );
  }
}
