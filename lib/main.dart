import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1_getx/Controllers/controllers.dart';
import 'package:task1_getx/Pages/dashboard_page.dart';
import 'package:task1_getx/Pages/login_page.dart';
import 'Pages/splash_page.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashPage(),
      getPages: [
        GetPage(
          name: '/login',
          page: () => const LoginPage(),
        ),
        GetPage(
          name: '/dashboard',
          page: () => const DashBoard(),
        ),
      ],
    );
  }
}