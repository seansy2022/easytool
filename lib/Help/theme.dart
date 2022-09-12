import 'package:flutter/material.dart';

class MyTheme {
  static primaryColor(BuildContext context) {
    return Theme.of(context).primaryColor;
  }

  static titleStyle(BuildContext context) {
    return Theme.of(context).textTheme.titleSmall;
  }
}
