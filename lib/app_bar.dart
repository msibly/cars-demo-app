import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar appBarW() {
  return AppBar(
    title: const Text(
      'CarBay',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: const Color.fromARGB(255, 79, 218, 125),
    elevation: 0.0,
    centerTitle: true,
    leading: GestureDetector(
      onTap: () {
        debugPrint('Ontap pressed'); //ontap function defenition
        // Navigator.pop();
        //
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset(
          'assets/icons/backButton.svg', // image path
          height: 30,
          width: 30,
        ),
      ),
    ),
  );
}
// }
