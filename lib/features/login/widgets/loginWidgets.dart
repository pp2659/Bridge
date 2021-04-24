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

border(double height){
  return new InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: colorwhite),
      ),
      contentPadding: EdgeInsets.only(top: height*0.01,
          bottom: height*0.01, left: height*0.02),
      border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(12.0),
        ),
      ),
      filled: true,
      hintStyle: new TextStyle(color: Colors.grey[800]),
      fillColor: Colors.white);
}



