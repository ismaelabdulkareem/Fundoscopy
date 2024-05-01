import 'package:flutter/material.dart';

// ignore: must_be_immutable
class myTextFiled extends StatelessWidget {
  final String myHit;
  final TextEditingController myController;
  final String? Function(String?)? myValidator;
  final Icon? MyPrefIcon;
  final bool myObscureText;
  const myTextFiled(
      {super.key,
      required this.myHit,
      required this.myValidator,
      required this.MyPrefIcon,
      required this.myController,
      required this.myObscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontFamily: 'georgia',
      ),
      controller: myController,
      obscureText: myObscureText,
      validator: myValidator,
      decoration: InputDecoration(
        hintText: myHit,
        prefixIcon: MyPrefIcon,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 15),
      ),
    );
  }
}

 // child: TextFormField(
              //   style: const TextStyle(
              //     fontFamily: 'georgia',
              //     fontWeight: FontWeight.bold,
              //   ),
              //   controller: _user_controller,
              //   decoration: const InputDecoration(
              //     labelText: 'Username or Email',
              //     hintStyle: TextStyle(fontFamily: 'georgia'),
              //     prefixIcon: Icon(Icons.person_3),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(50)),
              //     ),
              //   ),
              //   validator: (value) {
              //     if (value != _user_name) {
              //       return "Incorrect Username";
              //     }
              //     return null;
              //   },
              // ),