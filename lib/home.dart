import 'package:flutter/material.dart';
import 'package:flutter_application_1/page_hatchback.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/grid.dart';
import 'package:flutter_application_1/app_bar.dart';

class HomePage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarW(),
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Car Variants',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          gridElements(context),
        ],
      ),
    );
  }

  Expanded gridElements(BuildContext context) {
    // Define a list of grid items with titles and image paths
    final List<GridItem> gridItems = [
      GridItem(
        title: 'Hatchback',
        imagePath: 'assets/images/hatchback.png',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HatchbackPage(),
            ),
          );
        },
      ),
      GridItem(
        title: 'Sedan',
        imagePath: 'assets/images/sedan.png',
        onTap: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HatchbackPage(),
            ),
          )
        },
      ),
      GridItem(
        title: 'SUV',
        imagePath: 'assets/images/suv.png',
        onTap: () => {},
      ),
    ];

    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        children: gridItems.map((item) {
          return GridItemWidget(item: item);
        }).toList(),
      ),
    );
  }

  AppBar appBar() {
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
          //ontap function defenitions
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
}
