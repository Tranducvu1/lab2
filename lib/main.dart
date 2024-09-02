import 'package:flutter/material.dart';
import 'package:micard/InformationSacombankPage.dart';
import 'package:micard/InformationfbPage.dart';
import 'package:micard/informationinstaPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: const MyApp(),
    routes: {
      '/information': (context) => const InformationSacombankPage(),
      '/fb': (context) => const InformationfbPage(),
      '/insta': (context) => const InformationinstaPage(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 215, 253),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("images/TRANDUCVU.jpg"),
              ),
              const Text(
                'TRẦN ĐỨC VŨ',
                style: TextStyle(
                    fontSize: 40,
                    letterSpacing: 2.5,
                    fontFamily: 'OpenSans-VariableFont_wdth,wght',
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Flutter Developer',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              const Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '0345934782',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'vutd.21it@vku.udn.vn',
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/insta');
                    },
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/insta.jpg'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/fb');
                    },
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/fb.jpg'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/information');
                    },
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/sacombank.png'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
