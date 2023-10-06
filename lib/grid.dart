import 'package:flutter/material.dart';

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
