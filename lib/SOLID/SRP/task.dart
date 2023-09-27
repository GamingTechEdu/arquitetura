class Task {
  final String title;
  bool isCompleted;

  Task(this.title, {this.isCompleted = false});

  void toggleCompletion() {
    isCompleted = !isCompleted;
  }
}
