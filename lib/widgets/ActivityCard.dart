// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String url;
  final String uid;
  final String location;
  final int count;
  final String eid;
  const ActivityCard(
      {super.key,
      required this.title,
      required this.description,
      required this.date,
      required this.location,
      required this.eid,
      required this.url,
      required this.count,
      required this.uid});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[400],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(url),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Activity Name:$title',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
