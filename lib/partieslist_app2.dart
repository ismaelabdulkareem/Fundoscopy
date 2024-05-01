import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import 'package:omvoting/component/textfiled.dart';

class MyWidgetInsertParties extends StatefulWidget {
  const MyWidgetInsertParties({super.key});

  @override
  State<MyWidgetInsertParties> createState() => _MyWidgetRegState();
}

String _user_name = 'a';
String _password = "a";

TextEditingController _namePartyApp2 = TextEditingController();
TextEditingController _NoPartyApp2 = TextEditingController();

GlobalKey<FormState> user_key = GlobalKey<FormState>();
GlobalKey<FormState> pass_key = GlobalKey<FormState>();

String selectedOption = "";

class _MyWidgetRegState extends State<MyWidgetInsertParties> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        border: GradientBoxBorder(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 23, 26, 224),
                              Color.fromRGBO(23, 122, 202, 0.004)
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          width: 5,
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 169, 209, 241),
                            Color.fromARGB(255, 255, 255, 255),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerLeft,
                        ),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/partyApp2.png'),
                          fit: BoxFit
                              .fitHeight, // Adjust this based on your preference
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Form(
                    child: Column(
                      children: <Widget>[
                        myTextFiled(
                          myHit: 'Party Name',
                          myObscureText: false,
                          myController: _namePartyApp2,
                          MyPrefIcon: const Icon(Icons.flag_circle_rounded),
                          myValidator: (value) {
                            if (value == '') {
                              return "Please input Party name";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        myTextFiled(
                          myHit: 'Candidate No.',
                          myObscureText: false,
                          myController: _NoPartyApp2,
                          MyPrefIcon: const Icon(Icons.numbers_outlined),
                          myValidator: (value) {
                            if (value == '') {
                              return "Please input party #";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // width: double.infinity,

              padding: const EdgeInsets.only(
                  top: 5, left: 100, right: 100, bottom: 5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 255, 255, 255),
                    Color.fromARGB(255, 193, 220, 241),
                  ],
                  begin: Alignment.center,
                  end: Alignment.center,
                ),
              ),
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 30, 129, 243),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      "Insert party data",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'georgia',
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
