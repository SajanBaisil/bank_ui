import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BankCard extends StatelessWidget {
  final String imageicon;
  final String text;
  const BankCard({super.key, required this.imageicon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        color: const Color.fromARGB(255, 175, 226, 246),
        height: 130,
        width: 110,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            imageicon,
            height: 55,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )
        ]),
      ),
    );
  }
}
