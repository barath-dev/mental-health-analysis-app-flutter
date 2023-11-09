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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('activities').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text('Loading');
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              return ActivityCard(
                title: data['title'],
                description: data['description'],
                date: data['date'],
                url: data['url'],
                uid: data['uid'],
                eid: document.id,
                count: data['count'],
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
