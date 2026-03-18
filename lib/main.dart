import 'package:flutter/material.dart';
import 'package:myapp/alarms/alarms_page.dart';
import 'package:myapp/home/home_page.dart';
import 'package:myapp/pills/pills_page.dart';
import 'package:myapp/users/users_page.dart';

void main() {
  runApp(const ATiempoApp());
}

class ATiempoApp extends StatelessWidget {
  const ATiempoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A Tiempo',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/pastillas': (context) => const PillsPage(),
        '/usuarios': (context) => const UsersPage(),
        '/alarmas': (context) => const AlarmsPage(),
      },
    );
  }
}
