import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  // list of to do tasks
  List toDoList = [];
  //reference box
  final _myBox = Hive.box('mybox');

  //run this method when this is the first time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Maket tutorial", false],
      ["Do exercise", false],
    ];
  }

  //load data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update database
  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
