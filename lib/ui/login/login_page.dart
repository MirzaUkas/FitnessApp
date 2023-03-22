import 'package:fitness_app/common/colors.dart';
import 'package:fitness_app/ui/dashboard/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../widget/rounded_button_primary.dart';
import '../home/home_page.dart';

class LoginPage extends StatefulWidget {
  static String route = "/login";

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordObscure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    "Hey There,",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Center(
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.colorGreyF8,
                    hintText: "Email",
                    prefixIcon: SvgPicture.asset('assets/images/ic_email.svg',
                        fit: BoxFit.scaleDown),
                    hintStyle: const TextStyle(color: AppColor.colorBrown),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: _passwordController,
                  obscureText: _isPasswordObscure,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.colorGreyF8,
                    hintText: "Password",
                    prefixIcon: SvgPicture.asset('assets/images/ic_lock.svg',
                        fit: BoxFit.scaleDown),
                    suffixIcon: InkWell(
                      child: SvgPicture.asset('assets/images/ic_eye.svg',
                          fit: BoxFit.scaleDown),
                      onTap: () {
                        setState(() {
                          _isPasswordObscure = !_isPasswordObscure;
                        });
                      },
                    ),
                    hintStyle: const TextStyle(color: AppColor.colorBrown),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: () => Fluttertoast.showToast(
                      msg: "Fitur Belum Tersedia",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: AppColor.colorPurpleFD,
                      textColor: Colors.white,
                      fontSize: 16.0),
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: AppColor.colorBrown,
                        fontSize: 14,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                RoundedButtonPrimary(
                  width: double.infinity,
                  borderRadius: BorderRadius.circular(90),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/ic_login.svg'),
                      const SizedBox(width: 10),
                      const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, DashboardPage.route);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: AppColor.colorGreyDA,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Or",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: AppColor.colorGreyDA,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => Fluttertoast.showToast(
                          msg: "Fitur Belum Tersedia",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: AppColor.colorPurpleFD,
                          textColor: Colors.white,
                          fontSize: 16.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.colorGreyDA,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Center(
                          child: Image.asset('assets/images/ic_google.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () => Fluttertoast.showToast(
                          msg: "Fitur Belum Tersedia",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: AppColor.colorPurpleFD,
                          textColor: Colors.white,
                          fontSize: 16.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.colorGreyDA,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Center(
                          child:
                              SvgPicture.asset('assets/images/ic_facebook.svg'),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don’t have an account yet?",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () => Fluttertoast.showToast(
                          msg: "Fitur Belum Tersedia",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: AppColor.colorPurpleFD,
                          textColor: Colors.white,
                          fontSize: 16.0),
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 14, color: AppColor.colorPurpleF2),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
