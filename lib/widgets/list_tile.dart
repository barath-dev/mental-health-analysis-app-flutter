import 'package:flutter/material.dart';
import 'package:mental_health/models/jouranl_model.dart';
import 'package:mental_health/screens/journal/view_journal_screen.dart';

class Tile extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final snap;
  const Tile({super.key, required this.snap});

  @override
  Widget build(BuildContext context) {
    Journal journal = Journal.fromMap(snap);
    void delete() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ViewJournal(
                    journal: journal,
                  )));
    }

    return Card(
      child: ListTile(
        title: Text(
          journal.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
            '${journal.description.substring(0, (journal.description.length / 2).round())}...\n${journal.date.substring(0, 10)}'),
        tileColor: const Color.fromARGB(110, 173, 167, 167),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        trailing: IconButton(
          color: const Color.fromARGB(178, 244, 67, 54),
          icon: const Icon(Icons.delete),
          onPressed: () {},
        ),
        onTap: () {
          delete();
        },
      ),
    );
  }
}
