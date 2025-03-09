import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/theme.dart';
import '../../../core/assets.dart';
import '../controllers/skip_controller.dart';

class SkipScreen extends StatelessWidget {
  const SkipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SkipController>(
      init: SkipController(),
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Image.asset(Assets.splashImage, fit: BoxFit.contain),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Bring",
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                          children: [
                            TextSpan(
                              text: "\nYour Blocks\n",
                              style: TextStyle(color: AppTheme.highlightColor),
                            ),
                            TextSpan(text: "to Life!"),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Scan your creation to see dragons, \nwaterfalls, and more come alive!",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: FloatingActionButton(
                      elevation: 0,
                      backgroundColor: AppTheme.backgroundColor,
                      onPressed: () => _.goToLogin(),
                      child:
                          const Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
