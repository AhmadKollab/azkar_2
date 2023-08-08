import 'package:azkar_2/core/constants.dart';
import 'package:azkar_2/core/resources/manager_assets.dart';
import 'package:azkar_2/core/resources/manager_colors.dart';
import 'package:azkar_2/core/resources/manger_icon_sizes.dart';
import 'package:flutter/material.dart';

import '../core/resources/manager_fonts.dart';
import '../core/resources/manager_strings.dart';
import '../core/resources/manger_font_sizes.dart';
import '../core/widgets/base_text.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int counter=0;
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
                  () {
            counter++;
            print(counter);
          });
        },
        child:const Icon(Icons.add),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.info,
                color: ManagerColors.white,
                size: ManagerIconSizes.s36,
              ))
        ],
        backgroundColor: ManagerColors.transparent,
        elevation: Constants.appBarElevation,
        title: baseText(),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ManagerAssets.azkarImage),
                    fit: BoxFit.cover)),
          ),
          Align(
            child: baseText(text: '$counter'),
          )
        ],
      )
    );
  }
}
