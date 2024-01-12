import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/auth_screen_controller.dart';

class AuthScreenView extends GetView<AuthScreenController> {
  const AuthScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AuthScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AuthScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
