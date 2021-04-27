import 'package:bridge/features/login/screen/Login.dart';
import 'package:bridge/features/login/screen/Welcome.dart';
import 'package:bridge/features/login/widgets/loginWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../constants.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String email;
  String password;
  String confirmPassword;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var height =MediaQuery.of(context).size.height;
    var width =MediaQuery.of(context).size.width;
    final node = FocusScope.of(context);
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: colorblue,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: SvgPicture.asset('assets/login.svg'),
              ),
              Expanded(
                flex: 8,
                child: Stack( children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Container(
                        height: height * 1,
                        width: width * 1,
                        decoration: BoxDecoration(
                          color: colorblack,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container()),
                            Expanded(
                              flex: 7,
                              child: Padding(
                                //padding: const EdgeInsets.all(width/10), //TODO
                                padding: const EdgeInsets.only(left: 50, right: 50),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      textWidget('Signup using Email and Password', 0.045, colorwhite,width),
                                      SizedBox(
                                        height: height*0.02,
                                      ),
                                      textWidget('Email', 0.035, colorwhite,width),
                                      SizedBox(
                                        height: height*0.015,
                                      ),
                                      Container(
                                        height: height*0.06,
                                        child: TextField(
                                            onChanged: (value){
                                              email = value;
                                            },
                                            textInputAction: TextInputAction.next,
                                            onEditingComplete: () => node.nextFocus(), decoration: border(height)
                                        ),
                                      ),
                                      SizedBox(
                                        height: height*0.015,
                                      ),
                                      textWidget('Password', 0.035, colorwhite,width),
                                      SizedBox(
                                        height: height*0.015,
                                      ),
                                      Container(
                                        height: height*0.06,
                                        child: TextField(
                                            onChanged: (value){
                                              password = value;
                                            },
                                            textInputAction: TextInputAction.done,
                                            onEditingComplete: () => node.nextFocus(),
                                            obscureText: true,
                                            decoration: border(height)
                                        ),
                                      ),
                                      SizedBox(
                                        height: height*0.015,
                                      ),
                                      textWidget('Confirm Password', 0.035, colorwhite,width),
                                      SizedBox(
                                        height: height*0.015,
                                      ),
                                      Container(
                                        height: height*0.06,
                                        child: TextField(
                                            onChanged: (value){
                                              confirmPassword = value;
                                            },

                                            textInputAction: TextInputAction.done,
                                            onSubmitted: (_) => node.unfocus(),
                                            obscureText: true,
                                            decoration: border(height)

                                        ),
                                      ),

                                      SizedBox(
                                        height: height*0.03,
                                      ),

                                      InkWell(
                                        onTap: () async {
                                          print("pressed");
                                          if (password==confirmPassword){
                                          try {
                                            final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);
                                            if (newUser != null) {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()));
                                            }}
                                          catch (e) {
                                            print(e);
                                          }
                                        }
                                          else{
                                            print('Wrong Password');
                                            _scaffoldKey.currentState.showSnackBar(
                                                new SnackBar(
                                                  content: new Text('Wrong Password'),
                                                )
                                            );

                                          }
                                          },

                                        child: Center(
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                            child: Container(
                                              height: height*0.06,
                                              width: width*0.3,
                                              color: colorred,
                                              child: Center(child: textWidget('Signup', 0.04, colorwhite,width),),
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(
                                        height: height*0.02,
                                      ),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          textWidget("Already have an account?", 0.03, colorwhite,width),
                                          InkWell(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                                              },
                                              child: textWidget("Login", 0.03, colorblue,width)),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: Container(
                            height: height*0.07,
                            width: height*0.18,
                            color: colorwhite,
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SvgPicture.asset('assets/search.svg'),
                            ),),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width*0.06,
                      ),
                      InkWell(
                        onTap: (){},
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: Container(
                            height: height*0.07,
                            width: height*0.18,
                            color: colorwhite,
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SvgPicture.asset('assets/fb.svg'),
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
                ],),
              ),
            ],
          ),
        ));
  }
}
