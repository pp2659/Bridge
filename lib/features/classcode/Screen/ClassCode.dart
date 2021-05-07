import 'package:bridge/features/classcode/Widget/classcode%20widget.dart';
import 'package:bridge/features/dashboard/Screen/Dashboard.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
class ClassCode extends StatefulWidget {
  @override
  _ClassCodeState createState() => _ClassCodeState();
}

class _ClassCodeState extends State<ClassCode> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                      Dashboard()));
            },
            child: Button("classcode", height, width, colorred)),
      ),
    );
  }
}
