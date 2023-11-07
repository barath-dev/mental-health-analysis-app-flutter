import 'package:flutter/material.dart';
import 'package:mental_health/screens/journal/view_journal_list_screen.dart';
import 'package:mental_health/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ViewJournalListScreen()));
            },
            child: const Center(child: Text('My Journal')),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 54, 54, 244),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()));
            },
            child: const Center(child: Text('My Profile')),
          ),
        ),
      ],
    ));
  }
}
