import 'dart:io';

import 'package:easytool/model/app_model.dart';

const String applicationsPath = "/Applications";
const String systemApplicationsPath = "/System/Applications";

class AppHelp {
  Future<List<AppModel>> loadAllFile() async {
    final list = await Future.wait([
      loadFileApp(applicationsPath),
    ]);
    // loadFileApp(systemApplicationsPath)

    return [...list.first, ...list.last];
  }

  Future<List<AppModel>> loadFileApp(String path) async {
    final appDirectoy = Directory(path);
    final List<AppModel> appInfos = [];

    for (FileSystemEntity path in appDirectoy.listSync()) {
      print(path);

      final name = path.path
          .substring(applicationsPath.length + 1, path.path.length - 4);

      if (!name.startsWith(".")) {
        final appModel = AppModel(name: name, path: path.path);
        await appModel.findIcon();
        appInfos.add(appModel);
      }
    }

    return appInfos;
  }
}
