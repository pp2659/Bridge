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