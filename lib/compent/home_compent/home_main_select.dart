import 'package:flutter/material.dart';

class HomeMainSelect extends StatelessWidget {
  const HomeMainSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
      color: Colors.black26,
      child: Column(children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard,
              size: 32,
              color: Theme.of(context).primaryColor,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.laptop_mac,
              size: 32,
              color: Theme.of(context).cardColor,
            )),
      ]),
    );
  }
}
