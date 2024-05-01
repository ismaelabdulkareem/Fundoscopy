import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:omvoting/component/textfiled.dart';

class MyWidgetReg extends StatefulWidget {
  const MyWidgetReg({super.key});

  @override
  State<MyWidgetReg> createState() => _MyWidgetRegState();
}

String _user_name = 'a';
String _password = "a";

TextEditingController _user_controller = TextEditingController();
TextEditingController _pass_controller = TextEditingController();

GlobalKey<FormState> user_key = GlobalKey<FormState>();
GlobalKey<FormState> pass_key = GlobalKey<FormState>();

String selectedOption = "";

class _MyWidgetRegState extends State<MyWidgetReg> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assets/images/nn.png'), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'georgia',
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      border: GradientBoxBorder(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 238, 10, 10),
                            Color.fromRGBO(199, 179, 4, 0.004)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        width: 5,
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 241, 169, 169),
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
                  const SizedBox(
                    height: 15,
                  ),
                  Form(
                    child: Column(
                      children: <Widget>[
                        myTextFiled(
                          myHit: 'Full name',
                          myObscureText: false,
                          myController: _user_controller,
                          MyPrefIcon: const Icon(Icons.person_3),
                          myValidator: (value) {
                            if (value == '') {
                              return "Incorrect Username";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        myTextFiled(
                          myHit: 'Email',
                          myObscureText: false,
                          myController: _user_controller,
                          MyPrefIcon: const Icon(Icons.email_outlined),
                          myValidator: (value) {
                            if (value == '') {
                              return "Incorrect Username";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        IntlPhoneField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 15),
                            labelText: 'Phone Number',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                          ),
                          initialCountryCode: 'IQ',
                          // inputFormatters: <TextInputFormatter>[
                          //   FilteringTextInputFormatter.digitsOnly,
                          // ],
                          keyboardType: TextInputType.number,
                          onChanged: (phone) {},
                        ),
                        Container(
                          height: 55,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 240, 229, 229),
                                Color.fromARGB(255, 255, 255, 255),
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
                                    activeColor: const Color.fromARGB(
                                        255, 245, 111, 102),
                                    fillColor: MaterialStateProperty.all(
                                        const Color.fromARGB(255, 248, 92,
                                            81)), // Change the fill color when selected
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
                                    activeColor: const Color.fromARGB(
                                        255, 245, 111, 102),
                                    fillColor: MaterialStateProperty.all(
                                        const Color.fromARGB(255, 248, 92,
                                            81)), // Change the fill color when selected
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
                          myHit: 'Password',
                          myObscureText: true,
                          myController: _user_controller,
                          MyPrefIcon: const Icon(Icons.key_outlined),
                          myValidator: (value) {
                            if (value == '') {
                              return "Incorrect Username";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        myTextFiled(
                          myHit: 'Conifirm Password',
                          myObscureText: true,
                          myController: _user_controller,
                          MyPrefIcon:
                              const Icon(Icons.confirmation_number_sharp),
                          myValidator: (value) {
                            if (value == '') {
                              return "Incorrect Username";
                            }
                            return null;
                          },
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
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 240, 66, 66),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'georgia',
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Already have an account",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'georgia',
                        color: Color.fromARGB(255, 64, 8, 128),
                        fontWeight: FontWeight.w200,
                      ),
                    ),
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
