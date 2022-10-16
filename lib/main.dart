import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:preferences_app/providers/providers.dart';
import 'package:preferences_app/shared/preferences.dart';
import 'package:preferences_app/screens/screens.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();  

  await Preferences.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => ThemeProvider(isDarkMode: Preferences.isDarkMode))
      ],
      child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferences',
      theme: Provider.of<ThemeProvider>(context).currentTheme,
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName     : (_) => const HomeScreen(),
        SettingsScreen.routerName : (_) => const SettingsScreen(),
      },
    );
  }
}
