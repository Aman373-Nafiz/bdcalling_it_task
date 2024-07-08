import 'package:bdcalling_it_task/Screen/Widgets/HomeButtons.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF3DDC84),
            title: Text(
              'BdCalling IT ltd',
              style: TextStyle(color: Colors.white, fontSize: 23),
            ),
            centerTitle: true,
          ),
          body: HomeButtons()),
    );
  }
}
