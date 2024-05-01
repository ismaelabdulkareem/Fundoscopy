import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class newNews extends StatelessWidget {
  final String newTitle;
  final String newsPic;
  final String newsDesc;
  const newNews({
    super.key,
    required this.newTitle,
    required this.newsPic,
    required this.newsDesc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // my style
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
      margin: const EdgeInsets.only(left: 35, right: 35, top: 20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 228, 225, 225),
            Color.fromARGB(255, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 77, 75, 75).withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 5,
            offset: const Offset(0, 1),
          ),
        ],
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                child: Text(
                  newTitle,
                  style: const TextStyle(
                    fontFamily: 'georgia',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(newsPic),
                    fit: BoxFit.fill, // Adjust this based on your preference
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              child: Text(
                newsDesc,
                style: const TextStyle(fontFamily: 'georgia'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
