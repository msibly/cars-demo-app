import 'package:flutter/material.dart';

class pageHatchback extends StatefulWidget {
  const pageHatchback({super.key});

  @override
  State<pageHatchback> createState() => _pageHatchbackState();
}

class _pageHatchbackState extends State<pageHatchback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hatchback'),
      ),
    );
  }
}
