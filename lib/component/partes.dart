import 'package:flutter/material.dart';

class MyWidgetParties extends StatelessWidget {
  final String partiName;
  final String partiVotes;
  final String partiPercent;
  final Color colorChoose;

  const MyWidgetParties({
    super.key,
    required this.partiName,
    required this.partiVotes,
    required this.partiPercent,
    required this.colorChoose,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      margin: const EdgeInsets.only(left: 22, right: 22),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorChoose,
            const Color.fromARGB(255, 240, 235, 235),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.center,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 77, 75, 75).withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            partiName,
            style: const TextStyle(
              fontFamily: 'georgia',
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            partiVotes,
            style: const TextStyle(fontFamily: 'georgia'),
          ),
          Text(
            partiPercent,
            style: const TextStyle(fontFamily: 'georgia'),
          ),
        ],
      ),
    );
  }
}
