import 'dart:io';
import 'package:easytool/Help/theme.dart';
import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  final String? pathImage;
  final String appName;
  final String? startKey;
  final String? endKey;

  const InfoItem(
      {Key? key,
      required this.pathImage,
      required this.appName,
      this.startKey,
      this.endKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          if (pathImage != null)
            Image.file(
              File(pathImage!),
              width: 80,
              height: 80,
            ),
          Text(
            appName,
            style: MyTheme.titleStyle(context),
          ),
          Row(
            children: [Text("data"), Text("endKey")],
          )
        ],
      ),
    );
  }
}
// let myAppleScript = "..."
// var error: NSDictionary?
// if let scriptObject = NSAppleScript(source: myAppleScript) {
//     if let output: NSAppleEventDescriptor = scriptObject.executeAndReturnError(
//                                                                        &error) {
//         print(output.stringValue)
//     } else if (error != nil) {
//         print("error: \(error)")
//     }
// }