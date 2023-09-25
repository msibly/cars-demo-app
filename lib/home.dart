import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final String assetName = 'assets/icons/backButton.svg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Center(
            child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Cars',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
            height: 15,
          ),
          GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            primary: false,
            padding: const EdgeInsets.all(20),
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text("Tile 1"),
                color: Colors.orange[200],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text("Tile 2"),
                color: Colors.green[200],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text("Tile 3"),
                color: Colors.red[200],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text("Tile 4"),
                color: Colors.purple[200],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text("Tile 5"),
                color: Colors.blueGrey[200],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text("Tile 6"),
                color: Colors.yellow[200],
              ),
            ],
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'Demo App',
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Color.fromARGB(255, 79, 218, 125),
      elevation: 0.0,
      centerTitle: true,
      leading: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          'assets/icons/backButton.svg',
          height: 200,
          width: 200,
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
