import 'package:flutter/material.dart';
import 'package:mental_health/screens/journal/view_journal_screen.dart';

class Tile extends StatelessWidget {
  const Tile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: const Text(
          'Journal Title',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text('Journal Description'),
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
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ViewJournal()));
        },
      ),
    );
  }
}
