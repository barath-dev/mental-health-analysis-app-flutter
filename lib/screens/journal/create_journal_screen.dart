import 'package:flutter/material.dart';

class CreateJournal extends StatefulWidget {
  const CreateJournal({super.key});

  @override
  State<CreateJournal> createState() => _CreateJournalState();
}

class _CreateJournalState extends State<CreateJournal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Create Journal'),
        ),
        body: const Center(
          child: Text('Create Journal'),
        ));
  }
}
