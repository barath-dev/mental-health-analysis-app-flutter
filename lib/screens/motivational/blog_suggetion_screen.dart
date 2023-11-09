// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

// import 'package:http/ht' as http;

import 'package:flutter/material.dart';
import 'package:mental_health/widgets/Blogcard.dart';

class BlogSuggestion extends StatefulWidget {
  List<Map<String, dynamic>> articles;
  BlogSuggestion({super.key, required this.articles});

  @override
  State<BlogSuggestion> createState() => _BlogSuggestionState();
}

class _BlogSuggestionState extends State<BlogSuggestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Blog Suggestion')),
      ),
      // ignore: avoid_types_as_parameter_names
      body: ListView.builder(
          itemCount: 4500,
          itemBuilder: (context, index) => BlogCard(
                title: widget.articles[index]['title'],
                description: widget.articles[index]['description'],
                urlToImage: widget.articles[index]['urlToImage'],
                url: widget.articles[index]['url'],
              )),
    );
  }
}
