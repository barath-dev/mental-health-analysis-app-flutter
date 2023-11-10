import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final String text;
  const ResultScreen({super.key, required this.text});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mental Analysis'),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'This is the summary of your mental state',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 28,
                ),
                Text(widget.text),
                const SizedBox(
                  height: 28,
                ),
              ],
            ),
          )),
    );
  }
}
