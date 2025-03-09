import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:play_iq/controllers/signup_controller.dart';
import 'package:play_iq/core/theme.dart';

import '../app/routes.dart';

class SignUpScreen extends StatelessWidget {
  final SignUptController controller = Get.put(SignUptController());

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Create an Account",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.backgroundColor,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: AppTheme.backgroundColor,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text("Parents Details",
                    style: GoogleFonts.poppins(
                        color: AppTheme.backgroundColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text("Full Name",
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
                      hintText: 'Full Name',
                      hintStyle: TextStyle(color: AppTheme.backgroundColor)),
                ),
                SizedBox(height: 20),
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
                Text("Password",
                    style: GoogleFonts.poppins(
                        color: AppTheme.backgroundColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Obx(() => TextField(
                      controller: controller.passwordController,
                      obscureText: controller.isPasswordHidden.value,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Password",
                        hintStyle: TextStyle(color: AppTheme.backgroundColor),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        suffixIcon: IconButton(
                          color: AppTheme.backgroundColor,
                          icon: Icon(controller.isPasswordHidden.value
                              ? Icons.visibility_off_outlined
                              : Icons.visibility),
                          onPressed: controller.togglePasswordVisibility,
                        ),
                      ),
                    )),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            fillColor:
                                MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.selected)) {
                                return Colors
                                    .blue; // Background color when checked
                              }
                              return AppTheme
                                  .primary; // Background color when unchecked
                            }),
                            value: false,
                            onChanged: (value) {}),
                        Text("Remember me",
                            style: TextStyle(color: Colors.grey[500])),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.forgotPassword);
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: AppTheme.backgroundColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                          backgroundColor: AppTheme.backgroundColor),
                      onPressed: controller.signUp,
                      child: Text("LOGIN",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Container(
                    width: 300,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                        backgroundColor: AppTheme.primary,
                      ),
                      icon: Icon(
                        FontAwesomeIcons.google,
                      ),
                      label: Text("SIGN IN WITH GOOGLE",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppTheme.backgroundColor)),
                      onPressed: controller.googleLogin,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "You don’t have an account yet?",
                        style: TextStyle(color: AppTheme.backgroundColor),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.signup);
                          },
                          child: Text(
                            ' Sign up',
                            style: TextStyle(
                                color: AppTheme.highlightColor,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
