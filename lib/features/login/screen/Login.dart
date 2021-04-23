import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String email;
  String password;

  String text;
  int value;
  Color colorvar;

  _TextWidget(String text,value,colorvar) {
    this.value;
    this.text;
    this.colorvar;
    return Text(text,
      style: TextStyle(
        fontSize: MediaQuery.of(context).size.width*value,
        color: colorvar,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    var height =MediaQuery.of(context).size.height;
    var width =MediaQuery.of(context).size.width;

    final node = FocusScope.of(context);

    return Scaffold(
        backgroundColor: colorblue,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: SvgPicture.asset('assets/login.svg'),
              ),
              Expanded(
                  flex: 7,
                  child: Stack( children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 1,
                          width: MediaQuery.of(context).size.width * 1,
                          decoration: BoxDecoration(
                            color: colorblack,
                          ),

                          child: Column(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container()),

                              Expanded(
                                flex: 6,
                                child: Padding(
                                  //padding: const EdgeInsets.all(MediaQuery.of(context).size.width/10), //TODO
                                  padding: const EdgeInsets.only(left: 50, right: 50),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        _TextWidget('Login using Email and Password', 0.045, colorwhite),

                                        SizedBox(
                                          height: MediaQuery.of(context).size.height*0.02,
                                        ),

                                        _TextWidget('Email', 0.035, colorwhite),

                                        SizedBox(
                                          height: MediaQuery.of(context).size.height*0.015,
                                        ),

                                        Container(
                                          height: MediaQuery.of(context).size.height*0.06,
                                          child: TextField(
                                            textInputAction: TextInputAction.next,
                                            onEditingComplete: () => node.nextFocus(),

                                            obscureText: true,
                                            decoration: new InputDecoration(

                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(12.0),
                                                  borderSide: BorderSide(color: colorwhite),
                                                ),

                                                contentPadding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01,
                                                    bottom: MediaQuery.of(context).size.height*0.01, left: MediaQuery.of(context).size.height*0.02),

                                                border: new OutlineInputBorder(
                                                  borderRadius: const BorderRadius.all(
                                                    const Radius.circular(12.0),
                                                  ),
                                                ),
                                                filled: true,
                                                hintStyle: new TextStyle(color: Colors.grey[800]),
                                                // hintText: "Type in your Email",
                                                fillColor: Colors.white),
                                          ),
                                        ),

                                        SizedBox(
                                          height: MediaQuery.of(context).size.height*0.015,
                                        ),

                                        _TextWidget('Password', 0.035, colorwhite),

                                        SizedBox(
                                          height: MediaQuery.of(context).size.height*0.015,
                                        ),



                                        Container(
                                          height: MediaQuery.of(context).size.height*0.06,
                                          child: TextField(
                                            textInputAction: TextInputAction.done,
                                            onSubmitted: (_) => node.unfocus(),

                                            obscureText: true,
                                            decoration: new InputDecoration(

                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(12.0),
                                                  borderSide: BorderSide(color: colorwhite),
                                                ),

                                                contentPadding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01,
                                                    bottom: MediaQuery.of(context).size.height*0.01, left: MediaQuery.of(context).size.height*0.02),

                                                border: new OutlineInputBorder(
                                                  borderRadius: const BorderRadius.all(
                                                    const Radius.circular(12.0),
                                                  ),
                                                ),
                                                filled: true,
                                                hintStyle: new TextStyle(color: Colors.grey[800]),
                                                //hintText: "Type in your Password",
                                                fillColor: Colors.white),
                                          ),
                                        ),



                                        SizedBox(
                                          height: MediaQuery.of(context).size.height*0.015,
                                        ),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [ _TextWidget('Forgot password?', 0.03, colorblue),],

                                        ),

                                        SizedBox(
                                          height: MediaQuery.of(context).size.height*0.03,
                                        ),

                                        InkWell(
                                          onTap: (){

                                          },
                                          child: Center(
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(12),
                                              ),
                                              child: Container(
                                                height: MediaQuery.of(context).size.height*0.06,
                                                width: MediaQuery.of(context).size.width*0.3,
                                                color: colorred,
                                                child: Center(child: _TextWidget('LOGIN', 0.03, colorwhite),),
                                              ),
                                            ),
                                          ),
                                        ),

                                        SizedBox(
                                          height: MediaQuery.of(context).size.height*0.02,
                                        ),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            _TextWidget("Don't have an account?", 0.03, colorwhite),
                                            _TextWidget("Signup", 0.03, colorblue),
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
                              height: MediaQuery.of(context).size.height*0.07,
                              width: MediaQuery.of(context).size.height*0.18,
                              color: colorwhite,
                              child: Center(child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: SvgPicture.asset('assets/search.svg'),
                              ),),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.06,
                        ),

                        InkWell(
                          onTap: (){},
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.07,
                              width: MediaQuery.of(context).size.height*0.18,
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
