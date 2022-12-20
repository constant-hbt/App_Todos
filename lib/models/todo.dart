class Todo{

  Todo({required this.id, required this.title, required this.dateTime});

  Todo.fromJson(Map<String, dynamic> json)
    : id = json['id'],
    title = json['title'],
    dateTime = DateTime.parse(json['dateTime']);

  int id;
  String title;
  DateTime dateTime;

  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'title': title,
      'dateTime': dateTime.toIso8601String(),
    };
  }
}