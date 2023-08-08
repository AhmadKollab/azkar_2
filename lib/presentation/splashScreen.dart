import 'package:azkar_2/core/constants.dart';
import 'package:azkar_2/core/resources/manager_colors.dart';
import 'package:azkar_2/core/resources/manager_fonts.dart';
import 'package:azkar_2/core/widgets/base_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/resources/manager_font_weights.dart';
import '../core/resources/manager_strings.dart';
import '../core/resources/manger_font_sizes.dart';
import '../core/routes.dart';




class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    print('ini');
    Future.delayed(Duration(seconds: Constants.splashWait),(){
      Navigator.pushReplacementNamed (context, Routes.mainScreen);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
                colors: [
                  ManagerColors.secondaryColor,
                  ManagerColors.brown200,
                  ManagerColors.white70,
                ]
            )
          ),
          alignment: Alignment.center,
          child: baseText()
          ),
        );
  }
  @override
  void dispose() {
    print('dis');
    super.dispose();
  }
}
