import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginController extends GetxController {
  final RxBool isLoggedIn = false.obs;

  void login() async {

    await Future.delayed(const Duration(seconds: 2));
    isLoggedIn.value = true;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);

    Get.offAllNamed('/dashboard'); // Replace with your dashboard route
  }

  void logout() async {

    isLoggedIn.value = false;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('isLoggedIn');

    Get.offAllNamed('/login'); // Replace with your login route
  }
}
