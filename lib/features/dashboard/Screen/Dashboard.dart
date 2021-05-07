import 'package:bridge/features/dashboard/Widget/Dashboard%20widget.dart';
import 'package:bridge/features/subjectprofile/Screen/SubjectProfile.dart';
import 'package:bridge/features/timetable/Screen/Timetable.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            textWidget('Dummy dashboard', 0.05, colorblack, width),
            InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Timetable()));
                },
                child: Button("Timetable", height, width, colorred)),

            InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SubjectProfile()));
                },
                child: Button("Subject Profile", height, width, colorred)),

            InkWell(
                onTap: (){
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             Dashboard()));
                },
                child: Button("Attendence", height, width, colorred)),
            InkWell(
                onTap: (){
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             Dashboard()));
                },
                child: Button("Profile", height, width, colorred)),
            InkWell(
                onTap: (){
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             Dashboard()));
                },
                child: Button("Chat", height, width, colorred)),
          ],
        ),
      ),

    );
  }
}
