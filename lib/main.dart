import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:play_iq/views/check_email.dart';
import 'package:play_iq/views/signup_screen.dart';
import 'package:play_iq/views/successfully.dart';

import 'app/routes.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      getPages: AppRoutes.pages,
    );
  }
}
