import 'package:flutter/material.dart';

class InformationinstaPage extends StatelessWidget {
  const InformationinstaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trần Đức Vũ')),
      body: Center(
        child: Image.asset('images/insta1.jpg'),
      ),
    );
  }
}
