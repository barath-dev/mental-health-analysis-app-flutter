import 'package:flutter/material.dart';

class ViewJournal extends StatefulWidget {
  const ViewJournal({super.key});

  @override
  State<ViewJournal> createState() => _ViewJournalState();
}

class _ViewJournalState extends State<ViewJournal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Description'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Date'),
            ),
          ],
        ));
  }
}
