import 'package:flutter/material.dart';
import 'package:page_login/screens/sign_in_screen.dart';
import 'package:page_login/screens/sign_up_screen.dart';
import 'package:page_login/widget/custom_scaffold.dart';
import 'package:page_login/widget/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child:  Column(
        children: [
          Flexible(
            flex: 8,
              child: Container(
            padding: EdgeInsets.symmetric(
                vertical: 0,
            horizontal: 40),
            child: Center(
                 child: RichText(
                 textAlign: TextAlign.center,
                 text: TextSpan(
                children: [
                  TextSpan(
                    text:"Welcome Back!\n",
                   style: TextStyle(
                     fontSize: 45,
                     fontWeight: FontWeight.w600,
                     color: Colors.black
                 )
                  ),
                  TextSpan(
                    text: "\nEnter your details",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black
                    )
                  )
                ]
        ),
        ),
      ) ,
    )
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                      child: WelcomeButton(
                        bottonText: "Sign in",
                        onTap: SignInScreen(),
                      )),
                  Expanded(
                      child: WelcomeButton(
                        bottonText: "Sign up",
                        onTap: SignUpScreen(),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
