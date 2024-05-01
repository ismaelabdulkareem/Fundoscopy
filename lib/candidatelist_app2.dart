import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:text_area/text_area.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:omvoting/component/textfiled.dart';

class MyWidgetInsertCandidates extends StatefulWidget {
  const MyWidgetInsertCandidates({super.key});

  @override
  State<MyWidgetInsertCandidates> createState() => _MyWidgetRegState();
}

TextEditingController _nameCandiApp2 = TextEditingController();
TextEditingController _noCandiApp2 = TextEditingController();
TextEditingController _partiNameCandiApp2 = TextEditingController();
TextEditingController _educationCandiApp2 = TextEditingController();
TextEditingController _experienceCandiApp2 = TextEditingController();
TextEditingController _canditatePlanApp2 = TextEditingController();

GlobalKey<FormState> user_key = GlobalKey<FormState>();
GlobalKey<FormState> pass_key = GlobalKey<FormState>();
GlobalKey<FormState> _formKey = GlobalKey<FormState>();

String selectedOption = "";

class _MyWidgetRegState extends State<MyWidgetInsertCandidates> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 40),
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
                          image: ExactAssetImage('assets/images/userIcon.png'),
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
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        myTextFiled(
                          myHit: 'Full name',
                          myObscureText: false,
                          myController: _nameCandiApp2,
                          MyPrefIcon: const Icon(Icons.person_3),
                          myValidator: (value) {
                            if (value == '') {
                              return "Please input candidate name";
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
                          myController: _noCandiApp2,
                          MyPrefIcon: const Icon(Icons.numbers_outlined),
                          myValidator: (value) {
                            if (value == '') {
                              return "Please input candidate #";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 55,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 226, 236, 247),
                                Color.fromARGB(255, 186, 190, 238),
                              ],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                          ),
                          padding: const EdgeInsets.only(right: 65),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                    'Male',
                                    style: TextStyle(fontFamily: 'georgia'),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                  visualDensity:
                                      const VisualDensity(horizontal: -4),
                                  leading: Radio<int>(
                                    value: 1,
                                    groupValue: selectedOption,
                                    activeColor:
                                        const Color.fromARGB(255, 88, 134, 166),
                                    fillColor: MaterialStateProperty.all(
                                        const Color.fromARGB(255, 88, 134,
                                            166)), // Change the fill color when selected
                                    splashRadius:
                                        20, // Change the splash radius when clicked

                                    onChanged: (int? value) {
                                      setState(() {
                                        selectedOption = value!;
                                      });
                                    }, // Provide the actual selected value here
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                    'Female',
                                    style: TextStyle(fontFamily: 'georgia'),
                                  ),
                                  visualDensity:
                                      const VisualDensity(horizontal: -4),
                                  leading: Radio<int>(
                                    value: 2,
                                    groupValue: selectedOption,
                                    activeColor:
                                        const Color.fromARGB(255, 88, 134, 166),
                                    fillColor: MaterialStateProperty.all(
                                        const Color.fromARGB(255, 88, 134,
                                            166)), // Change the fill color when selected
                                    splashRadius:
                                        20, // Change the splash radius when clicked
                                    onChanged: (int? value) {
                                      setState(() {
                                        selectedOption = value!;
                                      });
                                    },
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        myTextFiled(
                          myHit: 'Party name',
                          myObscureText: false,
                          myController: _partiNameCandiApp2,
                          MyPrefIcon: const Icon(Icons.flag_outlined),
                          myValidator: (value) {
                            if (value == '') {
                              return "Enter Party name";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        myTextFiled(
                          myHit: 'Education',
                          myObscureText: false,
                          myController: _educationCandiApp2,
                          MyPrefIcon: const Icon(Icons.grade_outlined),
                          myValidator: (value) {
                            if (value == '') {
                              return "Enter Candidate education";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        myTextFiled(
                          myHit: 'Experiences',
                          myObscureText: false,
                          myController: _experienceCandiApp2,
                          MyPrefIcon: const Icon(Icons.work_history_outlined),
                          myValidator: (value) {
                            if (value == '') {
                              return "Enter Candidate education";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextArea(
                          borderRadius: 30,
                          borderColor: const Color.fromARGB(255, 73, 69, 69),
                          textEditingController: _canditatePlanApp2,
                          suffixIcon: Icons.attach_file_rounded,
                          onSuffixIconPressed: () => {},
                          validation: (true),
                          // errorText: 'Please type a reason!',
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(
                      child: Text(
                        '',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'georgia',
                          color: Color.fromARGB(255, 228, 27, 27),
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // width: double.infinity,

              padding:
                  const EdgeInsets.only(top: 5, left: 80, right: 80, bottom: 5),
              decoration: const BoxDecoration(
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
                      backgroundColor: const Color.fromARGB(255, 30, 129, 243),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      "Insert candidate data",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'georgia',
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        int candidateNumber =
                            int.tryParse(_noCandiApp2.text) ?? 0;

                        Map<String, dynamic> dataTosaveCand = {
                          'candname': _nameCandiApp2.text,
                          'candnum': candidateNumber,
                          'candparty': _partiNameCandiApp2.text,
                          'candedu': _educationCandiApp2.text,
                          'candexp': _experienceCandiApp2.text,
                          'candabout': _canditatePlanApp2.text,
                        };

                        CollectionReference cr = FirebaseFirestore.instance
                            .collection('candidatestb');

                        cr.add(dataTosaveCand).then((value) {
                          Fluttertoast.showToast(
                            msg: "Candidate data added successfully",
                            toastLength: Toast
                                .LENGTH_LONG, // Duration for which the toast is shown
                            gravity: ToastGravity.CENTER_LEFT, // Toast position
                            timeInSecForIosWeb: 5, // Time in seconds for iOS
                            backgroundColor: Colors.grey.withOpacity(
                                0.7), // Background color of the toast
                            textColor: Colors.white, // Text color of the toast
                            fontSize: 16.0, // Font size of the toast message
                          );
                        }).catchError((error) {
                          Fluttertoast.showToast(
                            msg: "Failled to add Candidate data !",
                            toastLength: Toast
                                .LENGTH_SHORT, // Duration for which the toast is shown
                            gravity: ToastGravity.CENTER, // Toast position
                            timeInSecForIosWeb: 5, // Time in seconds for iOS
                            backgroundColor: Colors.red.withOpacity(
                                0.7), // Background color of the toast
                            textColor: Colors.white, // Text color of the toast
                            fontSize: 16.0, // Font size of the toast message
                          );
                        });
                      }
                    },
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
