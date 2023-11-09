import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String url;
  final String uid;
  final int count;
  final String eid;
  ActivityCard(
      {super.key,
      required this.title,
      required this.description,
      required this.date,
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
        color: const Color.fromARGB(255, 255, 32, 32),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(url),
          const SizedBox(height: 16),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 8),
          Text(
            date,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 8),
          Text(
            count.toString(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 8),
          ElevatedButton(
              onPressed: () {
                FirebaseFirestore.instance
                    .collection('activities')
                    .doc(eid)
                    .update({'count': count + 1});
              },
              child: const Text('Intersted'))
        ],
      ),
    );
  }
}
