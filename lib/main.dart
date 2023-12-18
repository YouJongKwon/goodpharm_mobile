import 'package:flutter/material.dart';

import 'views/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {

  PageController controller = PageController();
  final List<Widget> _list = <Widget>[
    Center(child: Home()),
    Center(child: Home()),
    Center(child: Home()),
    Center(child: Home()),
    Center(child: Home()),
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        onPageChanged: (page){
          setState(() {
            _currentPage = page;
          });
        },
        children:
          _list,
      )
    );
  }
}
