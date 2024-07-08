import 'package:flutter/material.dart';
import 'package:bdcalling_it_task/Model/model.dart';

class ShowGridView extends StatelessWidget {
  final List<AndroidVerison> AV;

  ShowGridView({super.key, required this.AV});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
        shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 8.5,
            mainAxisSpacing: 8.5,
          ),
          itemCount: AV.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              width: 90,
              decoration: BoxDecoration(color: Colors.teal[100 * ((index % 5) + 1)],borderRadius: BorderRadius.circular(18)),
              child: Center(
                child: Text(
                  AV[index].title ?? "",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
