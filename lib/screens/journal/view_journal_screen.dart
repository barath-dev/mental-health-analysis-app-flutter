import 'package:flutter/material.dart';
import 'package:mental_health/models/jouranl_model.dart';

class ViewJournal extends StatefulWidget {
  final Journal journal;
  const ViewJournal({super.key, required this.journal});

  @override
  State<ViewJournal> createState() => _ViewJournalState();
}

class _ViewJournalState extends State<ViewJournal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.journal.title),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: Text(widget.journal.description),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Text(widget.journal.date.substring(0, 10)),
            ),
          ],
        ));
  }
}
