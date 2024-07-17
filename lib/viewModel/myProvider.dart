import 'package:flutter/cupertino.dart';

import '../model/Mymodel.dart';

class MyProvider with ChangeNotifier {
  List<tasks> taskList = [

  ];

  void addTask(tasks task) {
    taskList.add(task);
    notifyListeners();
  }
  void checkTask(int index){
    taskList[index].isDone();
    notifyListeners();
  }

  void Remove(tasks task){
    taskList.remove(task);
    notifyListeners();
  }
  void removeTask(tasks task) {
    taskList.remove(task);
    notifyListeners();
  }
}

