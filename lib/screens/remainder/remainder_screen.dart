// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:mental_health/resources/dbmethods.dart';

class RemainderScreen extends StatefulWidget {
  const RemainderScreen({super.key});

  @override
  State<RemainderScreen> createState() => _RemainderScreenState();
}

enum TtsState { title, date, time }

class _RemainderScreenState extends State<RemainderScreen> {
  final timeController = TextEditingController();
  final DateController = TextEditingController();
  final remainderController = TextEditingController();
  final descriptionController = TextEditingController();
  DateTime selectedPickupDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  _uploadRemainder() async {
    DBMethods dbMethods = DBMethods();
    var res = await dbMethods.createRemainder(
      title: remainderController.text,
      description: descriptionController.text,
      date_time: selectedPickupDate.toString().substring(0, 16),
    );
    if (res == 'success') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Remainder Created'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(res.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime(2100),
        initialDate: DateTime.now());

    Future<TimeOfDay?> pickTime() =>
        showTimePicker(context: context, initialTime: TimeOfDay.now());
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Remainder'),
        ),
        body: Column(children: <Widget>[
          Spacer(),
          TextField(
            controller: remainderController,
            decoration: const InputDecoration(
              hintText: 'Enter your remainder',
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          TextField(
            controller: remainderController,
            decoration: const InputDecoration(
              hintText: 'Description about the remainder',
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const Text(
                'Date & Time: ',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              const Spacer(),
              ElevatedButton(
                  onPressed: () async {
                    final date = await pickDate();
                    final time = await pickTime();
                    if (date == null) return;
                    if (time == null) return;

                    setState(() {
                      selectedPickupDate = date;
                      selectedPickupDate = DateTime(
                          selectedPickupDate.year,
                          selectedPickupDate.month,
                          selectedPickupDate.day,
                          time.hour,
                          time.minute);
                    });
                  },
                  child: Text(
                      "${selectedPickupDate.year}/${selectedPickupDate.month}/${selectedPickupDate.day}  ${selectedPickupDate.hour}:${selectedPickupDate.minute}")),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              _uploadRemainder();
            },
            child: const Text('Submit'),
          ),
          Spacer(),
        ]),
      ),
    );
  }
}
