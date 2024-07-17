class tasks{
  String title;
  bool isCompleted;
  tasks({required this.title,required this.isCompleted});

  void isDone() {
    isCompleted = !isCompleted;
  }
}