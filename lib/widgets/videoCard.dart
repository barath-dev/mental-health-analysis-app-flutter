// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoCard extends StatelessWidget {
  final String title;
  final String description;
  final String url;
  const VideoCard(
      {super.key,
      required this.title,
      required this.description,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        tileColor: Colors.grey[400],
        title: Text(title),
        subtitle: Text(description),
        trailing: IconButton(
          onPressed: () {
            launchUrl(Uri.parse(url));
          },
          icon: const Icon(Icons.play_arrow_rounded),
        ));
  }
}
