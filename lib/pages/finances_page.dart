import 'package:app_task/gen/assets.gen.dart';
import 'package:app_task/gen/fonts.gen.dart';
import 'package:app_task/pages/widgets/custom_app.dart';
import 'package:app_task/pages/widgets/custom_keypad.dart';
import 'package:app_task/utils/colors.dart';
import 'package:flutter/material.dart';

class FinancesScreen extends StatefulWidget {
  const FinancesScreen({super.key});

  @override
  State<FinancesScreen> createState() => _FinancesScreenState();
}

class _FinancesScreenState extends State<FinancesScreen> {
  final _controller = TextEditingController(text: "₦");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Enter Amount",
                      style: TextStyle(
                        fontFamily: FontFamily.montserrat,
                        color: kPrimaryColor,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: 200,
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: _controller,
                        readOnly: true,
                        style: const TextStyle(
                          fontFamily: FontFamily.montserratBold,
                          fontSize: 38,
                          color: kPrimaryColor,
                        ),
                        decoration: InputDecoration(
                          isCollapsed: true,
                          contentPadding: const EdgeInsets.only(
                            bottom: 8,
                          ),
                          // prefix: const Text("₦"),
                          hintText: "₦0",
                          prefixStyle: const TextStyle(
                            fontFamily: FontFamily.montserratBold,
                            fontSize: 38,
                            color: kPrimaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontFamily: FontFamily.montserratBold,
                            fontWeight: FontWeight.w800,
                            color: kPrimaryColor.withOpacity(.6),
                            fontSize: 38,
                          ),
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFDED1EF),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "To",
                      style: TextStyle(
                        fontFamily: FontFamily.montserrat,
                        fontSize: 16,
                        color: kPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.png.white
                            .image(fit: BoxFit.scaleDown, width: 24),
                        const SizedBox(width: 8),
                        const Text(
                          "Jane Doe",
                          style: TextStyle(
                            fontFamily: FontFamily.montserrat,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 36),
                    CustomKeypad(controller: _controller)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
