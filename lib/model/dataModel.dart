class Data {
  final int? userId;
  final int? id;
  final String? title;

  Data({this.userId, this.id, this.title});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
