import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1_getx/Controllers/controllers.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  final LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DashBoard"),
        backgroundColor: Colors.deepPurple,

      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            loginController.logout();
          },
          child: const Text('Log Out'),
        ),
      ),
    );
  }
}
