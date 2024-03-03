import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:page_login/widget/custom_scaffold.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({super.key});

  final _formSignInkey = GlobalKey<FormState>();
  bool agreePersonalData =true;

  @override
  Widget build(BuildContext context) {
      return CustomScaffold(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 10,
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 50, 25, 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formSignInkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Get Started",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter Full Name";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Name",
                            hintText: "Enter Full Name",
                            hintStyle: TextStyle(
                              color: Colors.black87,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black26,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black54,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter Email";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "Enter Email",
                            hintStyle: TextStyle(
                              color: Colors.black87,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black26,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black54,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          obscureText: true,
                          obscuringCharacter: "*",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter Password";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter Password",
                            hintStyle: TextStyle(
                              color: Colors.black87,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black26,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black54,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: agreePersonalData,
                                  onChanged: (bool? value) {
                                    //also here to my state is not working
                                   // setState(() {
                                      agreePersonalData = value!;
                                   // });
                                  },
                                ),
                                Text(
                                  " I agree",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                Text(
                                  'Personal data',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,),
                            GestureDetector(
                              onTap: () {
                                // Add your logic for forget password here
                              },
                              child: Text(
                                "Forget Password",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formSignInkey.currentState!.validate() &&
                                  agreePersonalData) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Processing Data")),
                                );
                              } else if (!agreePersonalData) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Please agree and continue")),
                                );
                              }
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.7,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 0,
                                horizontal: 10,
                              ),
                              child: Text(
                                " Sign up with",
                                style: TextStyle(color: Colors.black45),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 0.7,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Logo(Logos.facebook_logo),
                            Logo(Logos.twitter),
                            Logo(Logos.gmail),
                            Logo(Logos.apple),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account",
                              style: TextStyle(color: Colors.black45),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                " Sign Up",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }

