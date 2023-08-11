import 'package:azkar_2/core/constants.dart';
import 'package:azkar_2/core/resources/manager+_radius.dart';
import 'package:azkar_2/core/resources/manager_assets.dart';
import 'package:azkar_2/core/resources/manager_colors.dart';
import 'package:azkar_2/core/resources/manager_height.dart';
import 'package:azkar_2/core/resources/manager_width.dart';
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
  String initPopMenuValue = 'سبحان الله';
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
              print(counter);
            });
          },
          child: const Icon(Icons.add),
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          actions: [
            PopupMenuButton(
              color: Colors.white70,
              elevation: 10,
              initialValue: initPopMenuValue,
              itemBuilder: (context) => const [
                PopupMenuItem(
                  child: Text('سبحان الله'),
                  value: 'سبحان الله',
                ),
                PopupMenuItem(
                  child: Text('الحمداللله'),
                  value: 'الحمد الله',
                ),
                PopupMenuItem(
                  child: Text('استغفر الله'),
                  value: 'استغفر الله',
                ),
              ],
              onSelected: (value) {
                setState(() {
                  initPopMenuValue = value;
                  counter = 0;
                });
              },
            ),
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
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: ManagerHeight.h40,
                    width: ManagerWidth.w200,
                    decoration: BoxDecoration(
                        color: ManagerColors.white,
                        borderRadius: BorderRadius.circular(ManagerRadius.r12)),
                    child: baseText(text: '$initPopMenuValue',color: ManagerColors.black,),

                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: ManagerHeight.h40,
                      width: ManagerWidth.w100,
                      decoration: BoxDecoration(
                          color: ManagerColors.primaryColor,
                          borderRadius:
                              BorderRadius.circular(ManagerRadius.r12)),
                      child: baseText(text: '$counter')),
                ],
              ),
            ),
            Container(
              alignment: AlignmentDirectional.bottomStart,
              margin: const EdgeInsetsDirectional.only(
                bottom: ManagerHeight.h18,
                start: ManagerWidth.w15,
              ),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (counter > 0) counter--;
                  });
                },
                style: ElevatedButton.styleFrom(
                    //alignment: AlignmentDirectional.center,
                    backgroundColor: ManagerColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(ManagerRadius.r12),
                    ),
                    minimumSize: const Size(ManagerWidth.w6, ManagerHeight.h56)
                    //fixedSize: const Size(ManagerWidth.w2, ManagerHeight.h56)
                    ),
                child: Icon(
                  Icons.remove,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ));
  }
}
