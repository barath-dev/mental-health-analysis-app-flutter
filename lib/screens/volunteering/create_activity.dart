// ignore_for_file: unused_element, unused_field, use_build_context_synchronously

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mental_health/resources/dbmethods.dart';
import 'package:mental_health/resources/storagemethods.dart';
import 'package:mental_health/screens/auth/signup_screen.dart';
import 'package:mental_health/utils/utils.dart';

class CreateActivity extends StatefulWidget {
  const CreateActivity({super.key});

  @override
  State<CreateActivity> createState() => _CreateActivityState();
}

class _CreateActivityState extends State<CreateActivity> {
  DateTime selectedExpiryDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  DateTime selectedPickupDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  TextEditingController volenteer_title = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController venue = TextEditingController();
  TextEditingController duration = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController institute = TextEditingController();

  Uint8List? _file;
  bool _filepicked = false;
  String url = '';

  Future<void> uploadImage() async {
    StorageMethods storageMethods = StorageMethods();
    url = await storageMethods.uploadImagetoStorage(_file!);
  }

  void _selectImage() async {
    Uint8List image = await PickImage(ImageSource.gallery);
    _filepicked = true;
    setState(() {
      _file = image;
    });
  }

  void uploadActivity() async {
    DBMethods dbMethods = DBMethods();
    String result = await dbMethods.uploadActivity(
      date_time: selectedPickupDate.toString().substring(0, 16),
      title: volenteer_title.text,
      description: description.text,
      location: location.text,
      url: url,
    );
    if (result == 'success') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Activity Created'),
        ),
      );
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(result),
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
    return Scaffold(
        appBar: AppBar(
          title: const Text('Create Activity'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
                icon: const Icon(Icons.logout_rounded))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          !(_filepicked)
              ? const CircleAvatar(
                  backgroundColor: Color.fromARGB(0, 0, 0, 0),
                  backgroundImage: AssetImage('assets/images/add.jpg'),
                  radius: 50,
                )
              : CircleAvatar(
                  backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                  backgroundImage: MemoryImage(_file!),
                  radius: 50,
                ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                _selectImage();
              },
              child: const Text('Select Image')),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: volenteer_title,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Title',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: description,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Description',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: location,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Location',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: venue,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Venue',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
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
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
          ),
          ElevatedButton(
              onPressed: () {
                uploadImage();
                uploadActivity();
              },
              child: const Text('Create Activity')),
        ])));
  }
}
