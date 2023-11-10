// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mental_health/resources/dbmethods.dart';
import 'package:mental_health/screens/dashboard.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

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

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();

    const AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings('flutter_logo');
    const InitializationSettings initializationSettings =
        InitializationSettings(android: androidInitializationSettings);
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveBackgroundNotificationResponse: (response) {
      Fluttertoast.showToast(msg: 'hello');
    }, onDidReceiveNotificationResponse: (response) {
      Fluttertoast.showToast(msg: 'hello');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Dashboard()));
    });
  }

  shownotification() {
    print('emter');
    // if (selectedPickupDate.isBefore(DateTime.now())) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(
    //       content: Text('Please select a valid date'),
    //     ),
    //   );
    //   return;
    // }
    print('emter2');

    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      'channel_id',
      'channel_name',
      importance: Importance.max,
      priority: Priority.high,
      icon: 'flutter_logo',
    );

    const NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);
    flutterLocalNotificationsPlugin.show(0, remainderController.text,
        descriptionController.text, notificationDetails,
        payload: "hello thsi is a patload");

    // tz.initializeTimeZones();
    // tz.setLocalLocation(tz.getLocation('Asia/Kolkata'));
    // final tz.TZDateTime scheduledAt =
    //     tz.TZDateTime.from(selectedPickupDate, tz.local);

    // print(scheduledAt.subtract(const Duration(minutes: 330)));

    // flutterLocalNotificationsPlugin.zonedSchedule(
    //     1,
    //     remainderController.text,
    //     descriptionController.text,
    //     tz.TZDateTime.now(tz.local).add(Duration(seconds: 5)),
    //     notificationDetails,
    //     uiLocalNotificationDateInterpretation:
    //         UILocalNotificationDateInterpretation.absoluteTime,
    //     androidAllowWhileIdle: true);
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remainder'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: <Widget>[
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
            controller: descriptionController,
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
              // _uploadRemainder();
              print(selectedPickupDate);
              shownotification();
            },
            child: const Text('Submit'),
          ),
          Spacer(),
        ]),
      ),
    );
  }
}
