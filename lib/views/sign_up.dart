import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/components/components.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var FNameController = TextEditingController();
    var Re_enterpasswordController = TextEditingController();
    var country = TextEditingController();
    var items = [
      'Item1',
      'Item2',
      'Item3',
      'Item4',
      'Item5',
      'Item6',
      'Item7',
      'Item8',
    ];
    String? selectedValue;

    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * .1),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * .218),
              child: Image(
                  image: AssetImage('assets/images/Icon material-p (1).png')),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * .68, top: size.height * 1.27),
              child:
                  Image(image: AssetImage('assets/images/Icon material-p.png')),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * .6, top: size.height * .28),
              child: Image(
                image: AssetImage(
                  'assets/images/Icon material-p (2).png',
                ),
                height: size.width * .5,
                width: size.height * .5,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * .13),
              child: Image(
                image: AssetImage(
                  'assets/images/Icon material-p (2).png',
                ),
                height: size.width * .5,
                width: size.height * .5,
              ),
            ),
            Column(
              children: [
                Center(
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: size.height * 1.37,
                          width: size.width * .5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: HexColor('#492F24'), width: 2),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                            padding: EdgeInsets.only(top: size.height * .08),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  color: Colors.brown[800]),
                            )),
                      ),
                      //Facebook & google
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * .2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              myDefaultButton2(
                                  width: size.width * .165,
                                  hight: size.height * .09,
                                  text: 'Facebook',
                                  textColor: Colors.white,
                                  color: HexColor('#2F4582'),
                                  image: 'Assets/images/facebook.png'),
                              SizedBox(
                                width: 100,
                              ),
                              myDefaultButton2(
                                  width: size.width * .165,
                                  hight: size.height * .09,
                                  text: 'Google',
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  image: 'Assets/images/google.png'),
                            ],
                          ),
                        ),
                      ),
                      //OR
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * .3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              myDivider(width: size.width * .18),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Text(
                                  'Or',
                                  style: TextStyle(
                                      color: Colors.brown[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                              myDivider(width: size.width * .18),
                            ],
                          ),
                        ),
                      ),
                      //First Name
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * .37),
                          child: defaultFormField(
                            label: 'First Name',
                            height: size.height * .1,
                            width: size.width * .4,
                            controller: FNameController,
                            type: TextInputType.name,
                            validate: () => (String? value) {
                              if (value!.isEmpty) {
                                return 'First Name Must not be Empty';
                              }
                            },
                          ),
                        ),
                      ),
                      //Last Name
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * .5),
                          child: defaultFormField(
                            label: 'Last Name',
                            height: size.height * .1,
                            width: size.width * .4,
                            controller: passwordController,
                            type: TextInputType.visiblePassword,
                            validate: () => (String? value) {
                              if (value!.isEmpty) {
                                return 'Last Name Must not be Empty';
                              }
                            },
                          ),
                        ),
                      ),
                      //Email
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * .627),
                          child: defaultFormField(
                            label: 'Email',
                            height: size.height * .1,
                            width: size.width * .4,
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            validate: () => (String? value) {
                              if (value!.isEmpty) {
                                return 'Last Name Must not be Empty';
                              }
                            },
                          ),
                        ),
                      ),
                      //Password
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * .754),
                          child: defaultFormField(
                            label: 'Password',
                            height: size.height * .1,
                            width: size.width * .4,
                            controller: passwordController,
                            type: TextInputType.visiblePassword,
                            validate: () => (String? value) {
                              if (value!.isEmpty) {
                                return 'Password Must not be Empty';
                              }
                            },
                          ),
                        ),
                      ),
                      //Re Enter Pass
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * .878),
                          child: defaultFormField(
                            label: 'Re-Enter Password',
                            height: size.height * .1,
                            width: size.width * .4,
                            controller: Re_enterpasswordController,
                            type: TextInputType.visiblePassword,
                            validate: () => (String? value) {
                              if (value!.isEmpty) {
                                return 'Password Must not be Empty';
                              }
                            },
                          ),
                        ),
                      ),
                      //country
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * 1),
                          child: DropDown(
                            height: size.height * .1,
                            width: size.width * .4,
                            dropItems: items,
                            selectedItem: selectedValue.toString(),
                            hintText: 'Country',
                          ),
                        ),
                      ),

                      Center(
                        child: Padding(
                            padding: EdgeInsets.only(top: size.height * 1.15),
                            child: myDefaultButton(
                                hight: size.height * .11,
                                width: size.width * .4,
                                onPressed: () {},
                                text: 'Login')),
                      ),
                      Center(
                        child: Padding(
                            padding: EdgeInsets.only(
                                top: size.height, left: size.width * 3),
                            child: myDefaultTextButton(
                                text: 'Forget Password?', onPressed: () {})),
                      ),

                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * 1.3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already Have Account ?',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.w600),
                              ),
                              myDefaultTextButton(
                                text: 'Login',
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
