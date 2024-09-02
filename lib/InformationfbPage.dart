import 'package:flutter/material.dart';

class InformationfbPage extends StatelessWidget {
  const InformationfbPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trần Đức Vũ')),
      body: Center(
        child: Image.asset('images/fb1.jpg'),
      ),
    );
  }
}
