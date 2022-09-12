import 'package:easytool/Help/app_helper.dart';
import 'package:easytool/model/app_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appinfoProvider =
    ChangeNotifierProvider<AppInfoNotifier>((ref) => AppInfoNotifier());

class AppInfoNotifier extends ChangeNotifier {
  final appinfos = <AppModel>[];

  AppInfoNotifier() {
    loadApps();
  }

  loadApps() async {
    addAll(await AppHelp().loadAllFile());
  }

  addAll(List<AppModel> apps) {
    appinfos.addAll(apps.where((element) => element.isExist).toList());
    notifyListeners();
  }

  add(AppModel app) {
    appinfos.add(app);
  }

  setAppKeyState(
      {required String name,
      required String startKey,
      required List<String> endKey}) {
    try {
      final appModel = appinfos.firstWhere((element) => element.name == name);
      appModel.update(startKey: startKey, endKey: endKey);
    } catch (e) {
      debugPrint("ERROR");
    }
  }
}
