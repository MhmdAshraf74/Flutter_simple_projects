class Task {
  String name;
  bool isDone;

  Task({required this.name, this.isDone = false});

  factory Task.fromJson(Map<String, dynamic> json) =>
      Task(name: json['text'], isDone: json['done']);

  Map<String, dynamic> toJson() => {'name': name, 'isDone': isDone};
}
