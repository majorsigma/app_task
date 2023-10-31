import 'package:app_task/gen/fonts.gen.dart';
import 'package:app_task/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAlias,
      children: [
        Container(
          height: 95,
          decoration: const BoxDecoration(
            color: kLightGreen,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
          ),
        ),
        SizedBox(
          height: 90,
          child: AppBar(
            automaticallyImplyLeading: true,
            leading: const Icon(Icons.arrow_back, color: Colors.white),
            centerTitle: true,
            shadowColor: kLightGreen,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            title: const Text(
              "Finances",
              style: TextStyle(
                fontFamily: FontFamily.pTSans,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
