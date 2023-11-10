// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/screens/dashboard.dart';
import 'package:mental_health/screens/questioner/resultScree.dart';
import 'package:mental_health/services/openaiservices.dart';

List<String> one = [
  "How have you been feeling lately? Please describe your emotions and any significant experiences you've had recently.",
  "When you're feeling upset or stressed, what are some things you usually do to help yourself feel better?",
  "Are there specific things that you find yourself worrying about often? Can you tell me more about them?",
  "Can you share some thoughts about your relationships with your friends? Is there anything you'd like to talk about in regards to your friendships?",
  "Have there been times when you've felt unusually sad or down? If so, can you tell me more about those moments?"
];
List<String> two = [
  "How often do you feel stressed or overwhelmed? Can you provide some context or examples of situations that contribute to these feelings?",
  "Have you noticed any recent changes in your mood or behavior? What do you think might be causing these changes?",
  "Do you find it challenging to focus or concentrate on tasks? Are there specific situations or environments that make it harder for you?",
  "How would you describe your work-life balance? Are there aspects you feel satisfied with, or are there areas you'd like to improve?",
  "Have you had any thoughts or feelings about hurting yourself or others that you'd like to talk about?"
];

List<String> three = [
  "How often do you experience feelings of loneliness or isolation? Can you share more about the situations or circumstances that trigger these feelings?",
  "Have you noticed any changes in your memory or thinking skills that you'd like to discuss?",
  "Do you often find yourself feeling anxious or worried? What are some of the thoughts or situations that tend to provoke these feelings?",
  "Could you describe your sleep patterns? Do you experience any difficulties with sleep that you'd like to address?",
  "Have you noticed a decrease in your interest or enjoyment in activities you once liked? If so, can you provide more information about when you began to notice this change?"
];

class Questioner extends StatefulWidget {
  final int age;
  const Questioner({super.key, required this.age});

  @override
  State<Questioner> createState() => _QuestionerState();
}

class _QuestionerState extends State<Questioner> {
  List<String> list = [];
  @override
  void initState() {
    if (widget.age < 18) {
      list = one;
    } else if (widget.age < 40 && widget.age > 18) {
      list = two;
    } else {
      list = three;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController ans1 = TextEditingController();
    TextEditingController ans2 = TextEditingController();
    TextEditingController ans3 = TextEditingController();
    TextEditingController ans4 = TextEditingController();
    TextEditingController ans5 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questioner'),
        actions: [
          IconButton(
              onPressed: () async {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Dashboard()));
              },
              icon: const Icon(Icons.skip_next))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Text('Answer the following questions',
                  style: Theme.of(context).textTheme.headline1),
              const SizedBox(
                height: 40,
              ),
              Text('Question 1:'),
              const SizedBox(
                height: 20,
              ),
              Text(list[0]),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: ans1,
                decoration: const InputDecoration(
                  hintText: 'Answer',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text('Question 2:'),
              const SizedBox(
                height: 20,
              ),
              Text(list[1]),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: ans2,
                decoration: const InputDecoration(
                  hintText: 'Answer',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text('Question 3:'),
              const SizedBox(
                height: 20,
              ),
              Text(list[2]),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: ans3,
                decoration: const InputDecoration(
                  hintText: 'Answer',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text('Question 4:'),
              const SizedBox(
                height: 20,
              ),
              Text(list[3]),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: ans4,
                decoration: const InputDecoration(
                  hintText: 'Answer',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text('Question 5:'),
              const SizedBox(
                height: 20,
              ),
              Text(list[4]),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: ans5,
                decoration: const InputDecoration(
                  hintText: 'Answer',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () async {
                    var res = await OpenAIService().fetchCompletions(list[0] +
                        ans1.text +
                        list[1] +
                        ans2.text +
                        list[2] +
                        ans3.text +
                        list[3] +
                        ans4.text +
                        list[4] +
                        ans5.text);
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Result fetched successfully')));
                    FirebaseFirestore.instance
                        .collection('users')
                        .doc()
                        .set({'mood': res});
                  },
                  child: const Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}
