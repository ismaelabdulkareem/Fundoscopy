import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class MyWidgetParties extends StatelessWidget {
  final String partiName;
  final String partiVotes;
  final String partiPercent;
  final Color colorChoose;
  final String? img;

  const MyWidgetParties({
    super.key,
    required this.partiName,
    required this.partiVotes,
    required this.partiPercent,
    required this.colorChoose,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      margin: const EdgeInsets.only(left: 22, right: 22, bottom: 12),
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
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: const GradientBoxBorder(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 228, 33, 33),
                    Color.fromRGBO(0, 0, 0, 0.004),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                width: 3,
              ),
              image: img != null
                  ? DecorationImage(
                      image: NetworkImage(img!),
                      fit: BoxFit.fitHeight,
                    )
                  : null, // If img is null, don't show an image
            ),
          ),
          SizedBox(
            width: 250,
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
          ),
        ],
      ),
    );
  }
}
