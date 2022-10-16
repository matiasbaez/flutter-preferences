import 'package:flutter/material.dart';

import 'package:preferences_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferences',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName     : (_) => const HomeScreen(),
        SettingsScreen.routerName : (_) => const SettingsScreen(),
      },
    );
  }
}
