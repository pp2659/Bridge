import 'package:flutter/material.dart';

import '../../../constants.dart';

Widget textWidget(String text,value,colorVar,width) {
  return Text(text,
    style: TextStyle(
      fontSize: width*value,
      color: colorVar,
    ),
  );
}

Widget Button(String text,double height,double width, Color color){
  return Center(
    child: ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      child: Container(
        height: height * 0.07,
        width: width * 0.7,
        color: color,
        child: Center(
          child: textWidget(text,
              0.05, colorwhite, width),
        ),
      ),
    ),
  );
}