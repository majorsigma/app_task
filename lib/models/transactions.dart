import 'package:flutter/material.dart';

class Transaction {
  final String title;
  final String date;
  final double cost;
  final Color color;

  Transaction({
    required this.title,
    required this.date,
    required this.cost,
    required this.color,
  });
}

final listOfTransactions = [
  Transaction(
    title: "XYZ Supermarket",
    date: "15 March 2021, 8:30 pm",
    cost: -12000,
    color: const Color(0xFFFFCF87),
  ),
  Transaction(
    title: "Finnac Pharmacy",
    date: "9 March 2021, 10:00 pm",
    cost: -8950,
    color: const Color(0xFFE09FFF),
  ),
  Transaction(
    title: "Goodwill Gym",
    date: "3 March 2021, 6:57 PM",
    cost: -8950,
    color: const Color(0xFF87F0FF),
  ),
  Transaction(
    title: "Major Sigma Ent.",
    date: "28 Feb 2021, 7:30 PM",
    cost: -8950,
    color: const Color.fromARGB(255, 180, 38, 135),
  ),
  Transaction(
    title: "Kowope Ventures",
    date: "27 Feb 2021, 2:30 PM",
    cost: -8950,
    color: Color.fromARGB(255, 88, 221, 81),
  ),
  Transaction(
    title: "Opeyemi Provision Store",
    date: "27 Feb 2021, 7:30 AM",
    cost: -8950,
    color: Color.fromARGB(255, 225, 105, 129),
  ),
];
