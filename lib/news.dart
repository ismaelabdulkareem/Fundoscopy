import 'package:flutter/material.dart';
import 'package:omvoting/component/newews.dart';

class MyWidgetNews extends StatelessWidget {
  const MyWidgetNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assets/images/bg_fliped.png'),
              fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Form(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
                child: TextFormField(
                  style: const TextStyle(
                    fontFamily: 'georgia',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: 'Search',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 3, horizontal: 4),
                    fillColor: Color.fromARGB(255, 247, 227, 227),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView(
                children: const <Widget>[
                  newNews(
                      newTitle: 'Election deadlines',
                      newsPic: 'assets/images/a.png',
                      newsDesc:
                          'One of the most useful features of the Election Dates and Deadlines tool is that it provides voters with a granular and comprehensive list of all the different deadlines for every type of voting action'),
                  newNews(
                      newTitle: 'How to Vote!',
                      newsPic: 'assets/images/b.png',
                      newsDesc:
                          'If you are not familiar with using the app you can watch this video on YouTube'),
                  newNews(
                      newTitle: 'ECI Announcement',
                      newsPic: 'assets/images/c.png',
                      newsDesc:
                          'April 2024 Presidential Primary Election Deadlines, Enjoy'),
                  newNews(
                      newTitle: 'Election deadlines',
                      newsPic: 'assets/images/a.png',
                      newsDesc:
                          'One of the most useful features of the Election Dates and Deadlines tool is that it provides voters with a granular and comprehensive list of all the different deadlines for every type of voting action'),
                  newNews(
                      newTitle: 'How to Vote!',
                      newsPic: 'assets/images/b.png',
                      newsDesc:
                          'If you are not familiar with using the app you can watch this video on YouTube'),
                  newNews(
                      newTitle: 'ECI Announcement',
                      newsPic: 'assets/images/c.png',
                      newsDesc:
                          'April 2024 Presidential Primary Election Deadlines, Enjoy'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
