import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inscribly/data/data.dart';
import 'package:inscribly/res/res.dart';
import 'package:inscribly/utilities/utilities.dart';

void main() async {
  await initialize();
  runApp(const MyApp());
}

Future<void> initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppObjectBox.create();
  await Get.put<DBWrapper>(DBWrapper()).init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        builder: (_, child) => child!,
        child: GetMaterialApp(
          title: 'Inscribly',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.instance.lightTheme,
          darkTheme: AppTheme.instance.darkTheme,
          initialRoute: AppPages.initialRoute,
          getPages: AppPages.pages,
        ),
      );
}
