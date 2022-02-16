import 'package:flutter/material.dart';
import 'package:get_dio/views/all_users_screen.dart';
import 'package:get_dio/views/current_user_screen.dart';
import 'package:routemaster/routemaster.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routeInformationParser: RoutemasterParser(),
        routerDelegate: RoutemasterDelegate(routesBuilder: (_) => routes));
  }
}

final routes = RouteMap(routes: {
  '/': (_) => MaterialPage(child: AllUsersScreen()),
  '/char': (_) => MaterialPage(child: CurrentUserScreen()),
});
