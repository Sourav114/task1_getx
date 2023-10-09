import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1_getx/Controllers/controllers.dart';
import 'package:task1_getx/Pages/dashboard_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPage',
          style: TextStyle(
            color: Colors.white,
              fontSize: 24,
              fontStyle: FontStyle.italic),),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Username here",
                  hoverColor: Colors.deepOrange,
                  focusColor: Colors.lightBlue,
                ),
              ),
              const SizedBox(height: 30.0),
              const TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                obscuringCharacter: "#",
                decoration: InputDecoration(
                  labelText: "Password Here",
                ),

              ),
              const SizedBox(height: 30.0),
              CupertinoButton(
                  onPressed:() {
                    loginController.login();
                  },
                  child: const Text("Log In")
              ),
              const SizedBox(height: 20.0),
              CupertinoButton(
                  onPressed: (){
                    Get.to(const DashBoard());
                  },
                  child: const Text("Skip")),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
          backgroundColor: const Color(0xFF6200EA),
        child: const Icon(Icons.near_me,color: Colors.white,),
      ),
    );
  }
}
