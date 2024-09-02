import 'package:flutter/material.dart';

class InformationSacombankPage extends StatelessWidget {
  const InformationSacombankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trần Đức Vũ')),
      body: Center(
        child: Image.asset('images/info.jpg'),
      ),
    );
  }
}
