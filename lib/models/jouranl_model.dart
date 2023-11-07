import 'package:cloud_firestore/cloud_firestore.dart';

class Journal {
  String title;
  String description;
  String date;
  String time;

  Journal({
    required this.title,
    required this.description,
    required this.date,
    required this.time,
  });

  factory Journal.fromMap(QueryDocumentSnapshot json) => Journal(
        title: json["title"],
        description: json["description"],
        date: json["date"],
        time: json["time"],
      );
}
