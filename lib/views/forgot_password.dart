import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_iq/controllers/forgot_password_controller.dart';

import '../core/assets.dart';
import '../core/theme.dart';

class ForgotPassword extends StatelessWidget {
  final ForgotPasswordController controller =
      Get.put(ForgotPasswordController());
  ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text('Forgot Password?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700)),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'To reset your password, you need your email or mobile number that can be authenticated',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Center(
                child: Container(
                  height: 100,
                  child: Image.asset(
                    Assets.forgotPass,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text("Email",
                  style: GoogleFonts.poppins(
                      color: AppTheme.backgroundColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Email',
                    hintStyle: TextStyle(color: AppTheme.backgroundColor)),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.backgroundColor,
                    minimumSize: Size(double.infinity, 50)),
                child: Text('RESET PASSWORD',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              SizedBox(height: 20),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(2)),
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: AppTheme.primary,
                    ),
                    label: Text("BACK TO LOGIN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                    onPressed: () => Get.back()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
