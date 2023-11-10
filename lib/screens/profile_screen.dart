import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/screens/auth/login_screen.dart';
import 'package:mental_health/screens/questioner/questioner.dart';
import 'package:mental_health/screens/volunteering/volenteer_feed.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;

  void signOut() async {
    await auth.signOut();
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const LoginScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    _getUser() async {
      FirebaseFirestore.instance
          .collection('users')
          .doc(auth.currentUser!.uid)
          .get()
          .then((value) => print(value.data()));
    }

    initState() {
      super.initState();
      _getUser();
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          actions: [
            IconButton(
              onPressed: () {
                signOut();
              },
              icon: const Icon(Icons.logout),
            )
          ],
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('users')
              .doc(auth.currentUser!.uid)
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Column(
                  children: [
                    const Spacer(),
                    ListTile(
                      title: Text(snapshot.data!['name']),
                      leading: const Icon(Icons.person),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ListTile(
                      title: Text(snapshot.data!['email']),
                      leading: const Icon(Icons.email),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ListTile(
                      title: Text(snapshot.data!['age']),
                      leading: const Icon(Icons.calendar_today),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ListTile(
                      title: const Text('Volunteer for a cause'),
                      leading: const Icon(Icons.volunteer_activism),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const VolFeed();
                        }));
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ListTile(
                      title: const Text('Check your mental health'),
                      leading: const Icon(Icons.health_and_safety),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Questioner(
                            age: int.parse(snapshot.data!['age']),
                          );
                        }));
                      },
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Remainder')),
                    const Spacer(
                      flex: 2,
                    )
                  ],
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
