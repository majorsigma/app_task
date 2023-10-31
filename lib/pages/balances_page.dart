import 'package:app_task/gen/fonts.gen.dart';
import 'package:app_task/models/transactions.dart';
import 'package:app_task/pages/widgets/custom_prices.dart';
import 'package:app_task/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BalancesScreen extends StatefulWidget {
  const BalancesScreen({super.key});

  @override
  State<BalancesScreen> createState() => _BalancesScreenState();
}

class _BalancesScreenState extends State<BalancesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Stack(
          children: [
            AppBar(
              automaticallyImplyLeading: true,
              elevation: 0,
              leading: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const SizedBox(
                  height: 36,
                  width: 36,
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
              centerTitle: true,
              shadowColor: kLightGreen,
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.only(left: 20),
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: const Text(
              "You can check your \nbalances here,",
              style: TextStyle(
                color: kSecondaryColor,
                fontFamily: FontFamily.montserratBold,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const CustomPrices(),
          const SizedBox(height: 48),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Recent Transaction",
                    style: TextStyle(
                      fontFamily: FontFamily.montserratBold,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: listOfTransactions[index].color,
                            ),
                          ),
                          title: Text(
                            listOfTransactions[index].title,
                            style: const TextStyle(
                              fontFamily: FontFamily.montserrat,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            listOfTransactions[index].date,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                NumberFormat.currency(
                                  symbol: "₦",
                                ).format(listOfTransactions[index].cost),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 14,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 16);
                      },
                      itemCount: listOfTransactions.length,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
