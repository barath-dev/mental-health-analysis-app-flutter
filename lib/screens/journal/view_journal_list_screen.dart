import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/screens/journal/create_journal_screen.dart';
import 'package:mental_health/widgets/list_tile.dart';

class ViewJournalListScreen extends StatefulWidget {
  const ViewJournalListScreen({super.key});

  @override
  State<ViewJournalListScreen> createState() => _ViewJournalListScreenState();
}

class _ViewJournalListScreenState extends State<ViewJournalListScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Journal'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CreateJournal()));
          },
          child: const Icon(Icons.add),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 4),
          child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("jouranls")
                  .doc(auth.currentUser!.uid)
                  .collection('myJournals')
                  .snapshots(),
              builder: (context,
                  AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        return Tile(snap: snapshot.data!.docs[index]);
                      });
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
        ));
  }
}
