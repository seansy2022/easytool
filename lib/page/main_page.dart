import 'package:easytool/compent/home_compent/appinfo_widget.dart';
import 'package:easytool/compent/home_compent/home_main_select.dart';
// import 'package:easytool/compent/home_compent/home_select_option.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 100,
            child: HomeMainSelect(),
          ),
          Expanded(
            child: Container(
              child: AppInfo(),
            ),
          ),
        ],
      ),
    );
  }
}
