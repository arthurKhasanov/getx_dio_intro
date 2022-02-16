import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dio/controllers/user_screen_controller.dart';
import 'package:routemaster/routemaster.dart';

class AllUsersScreen extends StatelessWidget {
  AllUsersScreen({Key? key}) : super(key: key);
  final UserScreenController userScreenController = Get.put(UserScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Column(
            children: [
              Text(userScreenController.user.value.firstName ?? 'пусто'),
              GestureDetector(
                onTap: () => Routemaster.of(context).push('/char'),
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.network(userScreenController.user.value.avatar ??
                      'https://media.istockphoto.com/vectors/avatar-5-vector-id1131164548?k=20&m=1131164548&s=612x612&w=0&h=ODVFrdVqpWMNA1_uAHX_WJu2Xj3HLikEnbof6M_lccA='),
                ),
              )
            ],
          )),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    userScreenController.fetchUser(1);
                  },
                  child:const Text('1')),
              ElevatedButton(
                  onPressed: () {
                    userScreenController.fetchUser(2);
                  },
                  child:const Text('2')),
              ElevatedButton(
                  onPressed: () {
                    userScreenController.fetchUser(3);
                  },
                  child:const Text('3')),
              ElevatedButton(
                  onPressed: () {
                    userScreenController.fetchUser(4);
                  },
                  child:const Text('4')),
              ElevatedButton(
                  onPressed: () {
                    userScreenController.fetchUser(5);
                  },
                  child: const Text('5')),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    userScreenController.fetchUser(6);
                  },
                  child:const Text('6')),
              ElevatedButton(
                  onPressed: () {
                    userScreenController.fetchUser(7);
                  },
                  child:const Text('7')),
              ElevatedButton(
                  onPressed: () {
                    userScreenController.fetchUser(8);
                  },
                  child:const Text('8')),
              ElevatedButton(
                  onPressed: () {
                    userScreenController.fetchUser(9);
                  },
                  child:const Text('9')),
              ElevatedButton(
                  onPressed: () {
                    userScreenController.fetchUser(10);
                  },
                  child: const Text('10')),
            ],
          ),
        ],
      ),
    );
  }
}
