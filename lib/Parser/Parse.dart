import "dart:io";
import "package:bdcalling_it_task/Model/model.dart";

List<AndroidVerison> Json_to_Obj(List json) {
  List<AndroidVerison> Androids = [];
  for (var i in json) {
    if (i is Map) {
      int len = i.length;
      for (int j = 0; j < len + 1; j++) {
        if (i.containsKey(j.toString())) {
          Map element = i[j.toString()];
          Androids.add(
              AndroidVerison(id: element['id'], title: element['title']));
        } else {
          Androids.add(AndroidVerison(id: null, title: ""));
        }
      }
    } else if (i is List) {
      i.forEach((element) {
        Androids.add(
            AndroidVerison(id: element['id'], title: element['title']));
      });
    }
  }
  return Androids;
}