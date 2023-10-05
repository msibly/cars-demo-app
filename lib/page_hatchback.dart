import 'package:flutter/material.dart';

class HatchbackPage extends StatefulWidget {
  const HatchbackPage({super.key});

  @override
  State<HatchbackPage> createState() => _HatchbackPageState();
}

class _HatchbackPageState extends State<HatchbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hatchback'),
      ),
    );
  }
}
