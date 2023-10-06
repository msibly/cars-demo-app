import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_bar.dart';

class HatchbackPage extends StatefulWidget {
  const HatchbackPage({super.key});

  @override
  State<HatchbackPage> createState() => _HatchbackPageState();
}

class _HatchbackPageState extends State<HatchbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarW(),
    );
  }
}
