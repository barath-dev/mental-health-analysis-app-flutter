// ignore_for_file: non_constant_identifier_names, avoid_print, file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mental_health/models/jouranl_model.dart';
import 'package:uuid/uuid.dart';

class DBMethods {
  FirebaseAuth auth = FirebaseAuth.instance;
  Future<String> addJournal({
    required String title,
    required String description,
    required String date,
    required String time,
  }) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    String docId = const Uuid().v4();
    try {
      if (title.isNotEmpty &&
          description.isNotEmpty &&
          date.isNotEmpty &&
          time.isNotEmpty) {
        await firestore
            .collection("jouranls")
            .doc(auth.currentUser!.uid)
            .collection('myJournals')
            .doc(docId)
            .set({
          "title": title,
          "description": description,
          "date": date,
          "time": time,
          "uid": auth.currentUser!.uid,
        });
        return 'success';
      } else {
        return "Please fill all the fields";
      }
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> deleteJournal({required String docId}) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    try {
      await firestore
          .collection("jouranls")
          .doc(auth.currentUser!.uid)
          .collection('myJournals')
          .doc(docId)
          .delete();
      return 'success';
    } catch (e) {
      return e.toString();
    }
  }

}
