// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:mental_health/resources/dbmethods.dart';
import 'package:mental_health/widgets/textfiled.dart';

class CreateJournal extends StatefulWidget {
  const CreateJournal({super.key});

  @override
  State<CreateJournal> createState() => _CreateJournalState();
}

class _CreateJournalState extends State<CreateJournal> {
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  DateTime selectedExpiryDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  Future<String> upload() async {
    String res = await DBMethods().addJournal(
        title: title.text,
        description: description.text,
        date: DateTime(
                DateTime.now().year, DateTime.now().month, DateTime.now().day)
            .toString(),
        time: TimeOfDay.now().toString());
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create  Journal'),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              "Date: ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
            ),
            TextInput(hint: 'Title', controller: title),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            TextInput(
                hint: "Start your journal here...",
                maxlines: 15,
                controller: description),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                String res = await upload();
                if (res == 'success') {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Journal created')));
                  const Duration(milliseconds: 1500);
                } else {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(res)));
                }
              },
              child: const Text("Create Journal"),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
