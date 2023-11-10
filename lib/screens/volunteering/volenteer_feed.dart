// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/widgets/ActivityCard.dart';

class VolFeed extends StatefulWidget {
  const VolFeed({super.key});

  @override
  State<VolFeed> createState() => _VolFeedState();
}

class _VolFeedState extends State<VolFeed> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 86,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.purple.shade300],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          title: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Volunteer Feed',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    labelText: 'Search',
                  ),
                  onFieldSubmitted: (String _) {
                    setState(() {});
                  }),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder(
            future: FirebaseFirestore.instance
                .collection('activities')
                .where('location', isGreaterThanOrEqualTo: _searchController.text)
                .get(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data?.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot activity = snapshot.data!.docs[index];
                    return ActivityCard(
                      eid: activity.id,
                      title: activity['title'],
                      description: activity['description'],
                      date: activity['date&time:'],
                      url: activity['url'],
                      count: activity['count'],
                      uid: activity['uid'],
                      location : activity['location'],
                    );
                  },
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ));
  }
}
