
import 'package:flutter/material.dart';

import 'package:preferences_app/shared/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  static const String routerName = 'Home';

  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Darkmode: ${ Preferences.isDarkMode }'),
          const Divider(),
          Text('Género: ${ Preferences.gender }'),
          const Divider(),
          Text('Nombre usuario: ${ Preferences.name }'),
          const Divider(),
        ]
      ),
    );
  }

}
