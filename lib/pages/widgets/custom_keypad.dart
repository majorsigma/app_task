import 'package:app_task/gen/assets.gen.dart';
import 'package:app_task/gen/fonts.gen.dart';
import 'package:app_task/pages/balances_page.dart';
import 'package:app_task/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomKeypad extends StatefulWidget {
  const CustomKeypad({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<CustomKeypad> createState() => _CustomKeypadState();
}

class _CustomKeypadState extends State<CustomKeypad> {
  late List<String> _keypadString;

  @override
  void initState() {
    super.initState();
    _keypadString = [
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      ".",
      "0",
      "Enter",
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      childAspectRatio: 1.4,
      children: List.generate(
        _keypadString.length,
        (index) => GestureDetector(
          onTap: () {
            setState(() {
              if (_keypadString[index] != "Enter") {
                // widget.controller.text.startsWith("₦");
        
                widget.controller.text =
                    "${widget.controller.text}${_keypadString[index]}";
              } else {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const BalancesScreen();
                    },
                  ),
                );
              }
            });
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: _keypadString[index] == "Enter"
                  ? kPrimaryColor
                  : const Color(0xFFF5F6FA),
              borderRadius: BorderRadius.circular(8),
            ),
            child: _keypadString[index] == "Enter"
                ? Assets.svg.rightArrow.svg(fit: BoxFit.scaleDown)
                : Text(
                    _keypadString[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: kPrimaryColor,
                      fontFamily: FontFamily.pTSans,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
