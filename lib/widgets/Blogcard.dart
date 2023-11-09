// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogCard extends StatelessWidget {
  final String title;
  final String description;
  final String urlToImage;
  final String url;
  const BlogCard(
      {super.key,
      required this.title,
      required this.description,
      required this.urlToImage,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            Image.network(
              urlToImage,
              height: 160,
              width: double.infinity,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(description),
            TextButton(
                onPressed: () {
                  launchUrl(Uri.parse(url));
                },
                child: const Text('Read More'))
          ],
        ),
      ),
    );
  }
}
