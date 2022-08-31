import 'package:easytool/compent/home_compent/home_main_select.dart';
import 'package:easytool/compent/home_compent/home_select_option.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Text("data")
          SizedBox(
            width: 60,
            child: HomeMainSelect(),
          ),
          SizedBox(
            width: 180,
            child: Container(
              child: HomeSelectOption(),
              color: Colors.red[200],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green[200],
            ),
          ),
        ],
      ),
    );
  }
}
