import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/theme.dart';
import '../../../core/assets.dart';
import '../controllers/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (_) {
        return Scaffold(
          backgroundColor: AppTheme.backgroundColor,
          body: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                Assets.logo,
                fit: BoxFit.cover,
              ),
            ],
          ),
        );
      },
    );
  }
}
