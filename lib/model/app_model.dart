import 'dart:io';

const iconsInfoName = "CFBundleIconFile";
const iconEndPath = "/Contents/Resources";
const infosEndPath = "/Contents/Info.plist";
const icnsEndPath = ".icns";

class AppModel {
  final String name;
  final String path;
  String? iconPath;
  String? startKey;
  List<String>? endKey;
  bool isExist = false;

  AppModel({
    required this.name,
    required this.path,
    this.iconPath,
    this.startKey,
    this.endKey,
  });

  findIcon() async {
    final iconDirectory = Directory((path + iconEndPath));
    isExist = await iconDirectory.exists();

    if (isExist) {
      final iconsPath = iconDirectory.listSync().map((e) => e.path).toList();

      final iconCount = _endIconsCount(iconsPath, icnsEndPath);
      if (iconCount > 1) {
        iconPath = "$path$iconEndPath/${loadinfos("$path$infosEndPath")}";
      } else if (iconCount == 1) {
        iconPath = iconsPath.firstWhere((path) => (path.endsWith(icnsEndPath)));
      }
    }
  }

  int _endIconsCount(List<String> paths, String endString) {
    return paths.where((path) => path.endsWith(endString)).toList().length;
  }

  String loadinfos(String path) {
    String iconPath = "";
    final xmlString = File(path).readAsStringSync();

    final iconsName = xmlString
        .split("<key>CFBundleIconFile</key>")
        .last
        .split("</string>")
        .first
        .split("<string>")
        .last;

    iconPath =
        iconsName.endsWith(".icns") ? iconsName : "$iconsName$icnsEndPath";
    return iconPath;
  }

  update({
    required String startKey,
    required List<String> endKey,
  }) {
    this.startKey = startKey;
    this.endKey = endKey;
  }
}
