import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dio/controllers/user_screen_controller.dart';

class CurrentUserScreen extends StatelessWidget {
  CurrentUserScreen({Key? key}) : super(key: key);
  final UserScreenController userScreenController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Center(
      child: Text(userScreenController.user.value.firstName ?? 'Нет Юзера'),
    ));
  }
}
