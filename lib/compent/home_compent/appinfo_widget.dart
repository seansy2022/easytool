import 'package:easytool/compent/home_compent/info_item.dart';
import 'package:easytool/controller/app_info.dart';
import 'package:easytool/model/app_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppInfo extends ConsumerWidget {
  const AppInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<AppModel> apps = ref.watch(appinfoProvider).appinfos;
    return Container(
      // color: Colors.red,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 120,
            childAspectRatio: 0.5,
          ),
          itemCount: apps.length,
          itemBuilder: (BuildContext context, int index) {
            final app = apps[index];
            return InfoItem(
              pathImage: app.iconPath,
              appName: app.name,
            );
          }),
    );
  }
}
