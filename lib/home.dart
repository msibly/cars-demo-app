import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          heading(),
          gridElements(context),
        ],
      ),
    );
  }

  Expanded gridElements(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(3, (index) {
          return Container(
            margin: const EdgeInsets.all(20), // Margin around each item
            decoration: BoxDecoration(
              color: Colors.white, // Background color of each item
              borderRadius: BorderRadius.circular(8), // Rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 2, // Spread radius
                  blurRadius: 5, // Blur radius
                  offset: const Offset(0, 2), // Offset in x and y direction
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80, // Width and height of the image container
                  height: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle, // Circular shape
                    color: Colors
                        .blue, // Background color of the circular container
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/suv.png', // image path here
                      width: 100, // width and height of the image
                      height: 100,
                    ),
                  ),
                ),
                const SizedBox(
                    height: 20), // Spacing between the image and text
                Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  Center heading() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Text(
          'CarVariants',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'CarBay',
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      backgroundColor: const Color.fromARGB(255, 79, 218, 125),
      elevation: 0.0,
      centerTitle: true,
      leading: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: SvgPicture.asset(
          'assets/icons/backButton.svg',
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
