import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:bdcalling_it_task/Data/InputJson.dart';
import 'package:bdcalling_it_task/Model/model.dart';
import 'package:bdcalling_it_task/Screen/Result.dart';
import '../../Parser/Parse.dart';

class HomeButtons extends StatelessWidget {
  const HomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.sizeOf(context);
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: s.height * 0.09,
        ),
        Text(
          'Press any buttons for JSON parsed Output',
          style: TextStyle(
              color: Color(0xFF3DDC84),
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: s.height * 0.1,
        ),
        Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Results(
                      AV:  Json_to_Obj(Inputs.Json1)
                    );
                  })));
                },
                child: Container(
                  height: 70,
                  width: s.height / 4,
                  child: Center(
                    child: Text(
                      "Button 1",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xFF3DDC84),),
                ),
              ),
              SizedBox(
                height: s.height * 0.05,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Results(AV: Json_to_Obj(Inputs.Json2));
                  })));
                },
                child: Container(
                  height: 70,
                  width: s.height / 4,
                  child: Center(
                    child: Text(
                      'Button 2',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xFF3DDC84),),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
