import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health/bin/firebase_options.dart';
import 'package:mental_health/screens/auth/signup_screen.dart';
import 'package:mental_health/screens/dashboard.dart';
import 'package:mental_health/screens/remainder/remainder_screen.dart';
import 'package:mental_health/screens/volunteering/create_activity.dart';
import 'package:mental_health/screens/volunteering/volenteer_feed.dart';
import 'package:mental_health/utils/navbar.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.debug,
  );
  Permission.notification.request();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.05),
            centerTitle: false,
            backgroundColor: Colors.black,
            iconTheme: IconThemeData(color: Colors.white),
          ),
          primaryColor: Colors.blue,
          colorScheme: const ColorScheme.light(),
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.hasData) {
                if (FirebaseAuth.instance.currentUser!.email ==
                    'sponser@gmail.com') {
                  return const CreateActivity();
                }
                return const Dashboard();
              } else if (snapshot.hasError) {
                return Center(child: Text("${snapshot.error}"));
              }
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return const SignUpScreen();
          },
        ));
  }
}
