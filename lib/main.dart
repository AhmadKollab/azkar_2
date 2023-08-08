import 'package:azkar_2/presentation/main_screen.dart';
import 'package:flutter/material.dart';
import 'core/resources/manger_font_sizes.dart';
import 'core/routes.dart';
import 'presentation/about_screen.dart';
import 'presentation/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: ManagerFontSizes.s20,
            color: Colors.black,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen:(context) => splashScreen(),
        Routes.mainScreen:(context) => MainScreen(),
        Routes.aboutScreen:(context) =>AboutScreen()
      },
    );
  }
}

