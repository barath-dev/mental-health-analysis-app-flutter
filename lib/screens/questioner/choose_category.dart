import 'package:flutter/material.dart';

class ChooseCat extends StatelessWidget {
  const ChooseCat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          const Text(
            'Choose a category',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                title: const Center(
                    child: Text(
                  'Less than 18',
                  style: TextStyle(color: Colors.white),
                )),
                onTap: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                title: const Center(
                    child: Text(
                  '18-40',
                  style: TextStyle(color: Colors.white),
                )),
                onTap: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                title: const Center(
                    child: Text(
                  'Above 40',
                  style: TextStyle(color: Colors.white),
                )),
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
