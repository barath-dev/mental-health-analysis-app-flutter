import 'package:flutter/material.dart';
import 'package:mental_health/screens/journal/create_journal_screen.dart';
import 'package:mental_health/widgets/list_tile.dart';

class ViewJournalListScreen extends StatefulWidget {
  const ViewJournalListScreen({super.key});

  @override
  State<ViewJournalListScreen> createState() => _ViewJournalListScreenState();
}

class _ViewJournalListScreenState extends State<ViewJournalListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Journal'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CreateJournal()));
          },
          child: const Icon(Icons.add),
        ),
        body: Container(
          padding: const EdgeInsets.all(8),
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return  Tile();
              }),
        ));
  }
}
