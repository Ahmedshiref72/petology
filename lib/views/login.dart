import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/components/components.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;

    return Padding(
      padding: EdgeInsets.only(top: size.height * .1),
      child: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.only(bottom: 200),
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: size.height * .3545),
                        child: Container(
                          height: size.height * 1.05,
                          width: size.width * .5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: HexColor('#492F24'), width: 2),

                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: size.height * .37,
                        width: size.width * .37,
                        child: Image(height: size.height * .37,
                          width: size.height * .37,
                          image: AssetImage(
                            'assets/images/Dog.png',

                          ),),
                      ),
                    ),
                    Center(
                      child: Padding(
                          padding: EdgeInsets.only(top: size.height * .4),
                          child: Text('Login', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.brown[800]
                          ),)
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: size.height * .55),
                        child: defaultFormField(
                          label: 'Email',
                          height: size.height * .1,
                          width: size.width * .4,
                          controller: emailController,
                          type: TextInputType.emailAddress,
                          validate: () =>
                              (String? value) {
                            if (value!.isEmpty) {
                              return 'Email Must not be Empty';
                            }
                          },

                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: size.height * .69),
                        child: defaultFormField(
                          label: 'Password',
                          height: size.height * .1,
                          width: size.width * .4,
                          controller: passwordController,
                          type: TextInputType.visiblePassword,
                          validate: () =>
                              (String? value) {
                            if (value!.isEmpty) {
                              return 'Password Must not be Empty';
                            }
                          },
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                          padding: EdgeInsets.only(top: size.height * .865),
                          child: myDefaultButton(
                              hight: size.height * .11,
                              width: size.width * .4,
                              onPressed: () {},
                              text: 'Login'
                          )
                      ),
                    ),
                    Center(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: size.height, left: size.width * .28),
                          child: myDefaultTextButton(text: 'Forget Password?',
                              onPressed: () {})

                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: size.height * 1.08),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            myDivider(width: size.width * .18),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Text('Or', style: TextStyle(
                                  color: Colors.brown[800],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17
                              ),),
                            ),
                            myDivider(width: size.width * .18),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: size.height * 1.16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            myDefaultButton2(
                                width: size.width * .165,
                                hight: size.height * .09,
                                text: 'Facebook',
                                textColor: Colors.white,
                                color: HexColor('#2F4582'),
                                image: 'Assets/images/facebook.png'
                            ),
                            SizedBox(width: 100,),
                            myDefaultButton2(
                                width: size.width * .165,
                                hight: size.height * .09,
                                text: 'Google',
                                textColor: Colors.black,
                                color: Colors.white,
                                image: 'Assets/images/google.png'
                            ),

                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: size.height * 1.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Text('Don\'t have an account?', style:
                            TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.w600
                            ),),
                            myDefaultTextButton(
                              text: 'sign up',
                              onPressed: () {},),
                          ],),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


