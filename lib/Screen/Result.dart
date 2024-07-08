import 'package:flutter/material.dart';
import 'package:bdcalling_it_task/Model/model.dart';
import 'Widgets/ShowGridView.dart';

class Results extends StatelessWidget {
   List<AndroidVerison> AV;

  Results({super.key, required this.AV});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3DDC84),
        title: Text(
          'BdCalling IT ltd',
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
        centerTitle: true,
      ),
      body: ShowGridView(AV: AV),
    );
  }
}
