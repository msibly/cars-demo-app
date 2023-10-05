import 'package:flutter/material.dart';
import 'package:flutter_application_1/page_hatchback.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
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

class GridItem {
  final String title;
  final String imagePath;
  final VoidCallback? onTap;

  GridItem({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });
}

class GridItemWidget extends StatelessWidget {
  final GridItem item;

  const GridItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.onTap,
      child: Container(
        margin: const EdgeInsets.all(20), // Margin around each item
        decoration: BoxDecoration(
          color: Colors.white, // Background color of each item
          borderRadius: BorderRadius.circular(10), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 5, // Spread radius
              blurRadius: 10, // Blur radius
              offset: const Offset(0, 0), // Offset in x and y direction
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, //Column arrangement in grid items
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: 100, // Width and height of the image container
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Circular shape
                color:
                    Colors.white, // Background color of the circular container
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 5, // Spread radius
                    blurRadius: 10, // Blur radius
                    offset: const Offset(0, 2), // Offset in x and y direction
                  ),
                ],
              ),
              child: Center(
                child: Image.asset(
                  item.imagePath, // image path from GridItem
                  width: 100, // width and height of the image
                  height: 100,
                ),
              ),
            ),
            // const SizedBox(height: 10), // Spacing between the image and text
            Text(
              item.title, // title from GridItem
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
