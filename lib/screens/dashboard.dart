// ignore_for_file: unnecessary_const, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/resources/dbmethods.dart';
import 'package:mental_health/screens/journal/create_journal_screen.dart';
import 'package:mental_health/screens/journal/view_journal_list_screen.dart';
import 'package:mental_health/screens/motivational/blog_suggetion_screen.dart';
import 'package:mental_health/screens/motivational/video_suggestions_screen.dart';
import 'package:mental_health/screens/profile_screen.dart';
import 'package:mental_health/screens/questioner/questioner.dart';
import 'package:mental_health/screens/remainder/remainder_screen.dart';
import 'package:mental_health/screens/volunteering/volenteer_feed.dart';
import 'package:mental_health/services/blog_services.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text('Enhance your\nmental health',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () async {
                      var age = await DBMethods().getUserAge();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Questioner(age: int.parse(age))));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(255, 44, 94, 1),
                      ),
                      height: 160,
                      child: const Center(
                          child: Text(
                        'Answer\nquestions',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                  )),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: InkWell(
                    onTap: () async {
                      var mood = await DBMethods().getMood();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BlogSuggestion(
                                    articles: ApiService().getArticle(mood),
                                  )));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 44, 94, 93),
                      ),
                      height: 160,
                      child: const Center(
                          child: Text(
                        'Blogs',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateJournal()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 44, 94, 93),
                      ),
                      height: 160,
                      child: const Center(
                          child: Text(
                        'Write a\njournal',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                  )),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ViewJournalListScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(255, 44, 94, 1),
                      ),
                      height: 160,
                      child: const Center(
                          child: Text(
                        'My Journal',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RemainderScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(255, 44, 94, 1),
                      ),
                      height: 160,
                      child: const Center(
                          child: Text(
                        'Remainder',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                  )),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VolFeed()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 44, 94, 93),
                      ),
                      height: 160,
                      child: const Center(
                          child: Text(
                        'Volunteer\nfor a cause',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VideoSuggestion()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 44, 94, 93),
                      ),
                      height: 160,
                      child: const Center(
                          child: Text(
                        'Motivational\nVideos',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                  )),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfileScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(255, 44, 94, 1),
                      ),
                      height: 160,
                      child: const Center(
                          child: Text(
                        'My Profile',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  FirebaseAuth.instance.signOut();
                },
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(255, 44, 94, 1),
                      ),
                      height: 160,
                      child: const Center(
                          child: Text(
                        'Logout',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 36,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
