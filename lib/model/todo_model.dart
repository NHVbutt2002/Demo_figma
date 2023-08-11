class TodoModel {
  TodoModel({
    this.title,
    this.conTent,
    this.time,
  });
  String? title;
  String? conTent;
  DateTime? time;

  Map<String, dynamic> json() {
    return {
      'title': title,
      'content': conTent,
      'time': time,
    };
  }

  factory TodoModel.model(Map<String, dynamic> json) {
    return TodoModel(
      title: json['title'],
      conTent: json['conTent'],
      time: json['time'],
    );
  }
}
