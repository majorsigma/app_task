import 'package:app_task/gen/assets.gen.dart';
import 'package:app_task/gen/fonts.gen.dart';
import 'package:app_task/models/custom_price.dart';
import 'package:app_task/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomPrices extends StatefulWidget {
  const CustomPrices({super.key});

  @override
  State<CustomPrices> createState() => _CustomPricesState();
}

class _CustomPricesState extends State<CustomPrices> {
  int? selectedIndex = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.separated(
        clipBehavior: Clip.none,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              width: 150,
              height: 90,
              padding: const EdgeInsets.all(8),
              decoration: selectedIndex != index
                  ? BoxDecoration(
                      color: kSecondaryColor,
                      border: Border.all(color: Colors.grey.withOpacity(.2)),
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 3),
                          color: Color(0xFFC7C7C7),
                        )
                      ],
                    )
                  : BoxDecoration(
                      color: kLightGreen,
                      borderRadius: BorderRadius.circular(24),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        scale: 2,
                        image: AssetImage(Assets.png.gradient.path),
                      ),
                    ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    costPrices[index].name,
                    style: TextStyle(
                      color: selectedIndex != index
                          ? Colors.black
                          : kSecondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    costPrices[index].cost.toString(),
                    style: TextStyle(
                      fontFamily: FontFamily.montserratBold,
                      color: selectedIndex != index
                          ? Colors.black
                          : kSecondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 40);
        },
        itemCount: 3,
      ),
    );
  }
}
