import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health/bin/firebase_options.dart';
import 'package:mental_health/screens/journal/view_journal_list_screen.dart';
import 'package:mental_health/screens/journal/view_journal_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        home:  ViewJournalListScreen());
  }
}
