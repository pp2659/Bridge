import 'package:bridge/constants.dart';
import 'package:bridge/features/Welcome/Widget/welcomeWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: colorblue,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 1,
              child: Container(),),
            Expanded(flex: 4,
                child: Column(
                  children: [
                    Text('Welcome!',
                      style: TextStyle(
                        color: colorwhite,
                        fontSize: height*0.05,
                      ),),
                    SizedBox(
                      height: height*0.02,
                    ),
                    Text('Please select your role before getting started',
                      style: TextStyle(
                        color: colorwhite,
                        fontSize: height*0.02,
                      ),),
                    SizedBox(
                      height: height*0.02,
                    ),
                    InkWell(
                        onTap: (){},
                        child: Button("Student", height, width, colorblack)),
                    SizedBox(
                      height: height*0.02,
                    ),
                    InkWell(
                        onTap: (){},
                        child: Button("Parent", height, width, colorblack)),
                    SizedBox(
                      height: height*0.02,
                    ),
                    InkWell(
                        onTap: (){},
                        child: Button("Teacher", height, width, colorblack)),


                  ],
                )),
            Expanded(
              flex: 2,
              child: Container(
                  child: SvgPicture.asset('assets/welcome.svg', 
                  )),),
            Expanded(
                flex: 2,
                child: Container(
                  color: colorblack,
                  child: InkWell(
                      onTap: (){},
                      child: Button("Get Started", height, width, colorred)),
                )),
          ],
        ),
      ),
    );
  }
}