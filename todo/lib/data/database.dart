import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  //reference our box

  List toDoList = [];

  final _myBox = Hive.box("mybox");

  //it runs if the program 1st time over opening
  void createIitialData() {
    toDoList = [
      ["read book", false],
      ["do exercise", true]
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDateBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
