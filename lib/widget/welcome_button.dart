import 'package:flutter/material.dart';
import 'package:page_login/screens/sign_up_screen.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key, this.bottonText, this.onTap,});
   final String? bottonText;
   final Widget? onTap;


  @override
  Widget build(BuildContext context) {
    //gesturedecector is to make our button clickable
    //navigator to move from one page to another when you click the signin or dignup button
    return GestureDetector(
      onTap: () {
      Navigator.push(context, MaterialPageRoute
        (builder: (e) => onTap!,
           ),
        );
      },
      child:
      Container(
        padding: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
              ),
          ),
          child: Text(
            bottonText!,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
            ),
          ),
      )
    );
  }
}
