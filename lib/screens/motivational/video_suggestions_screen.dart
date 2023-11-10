import 'package:flutter/material.dart';
import 'package:mental_health/widgets/videoCard.dart';

List<String> title = [
  'Do What You Can’t by Casey Neistat',
  'Steve Jobs’ 2005 Stanford Commencement Address',
  'The Best Gift I Ever Survived by Stacey Kramer',
  'The Basketball Scene from The Pursuit of Happiness',
  'Get Back Up by Nick Vujicic',
  'Rocky Balboa’s Speech to His Son',
  'Damian Aspinall is Reunited with Kwibi the Gorilla',
  'The Death Crawl Scene from Facing the Giants',
  'Kid Gives Speech After Learning to Ride a Bike',
  'The One Thing Only 1% of People Do',
  'Jim Carrey’s 2014 Commencement Address',
  'Olympian Derek Redmond Finishes the Race',
  'Neil Gaiman’s 2012 Commencement Speech at the University of the Arts',
  'Success is a Continuous Journey by Richard St. John',
  'Everyday',
  'Finding Your Meaning of Life',
  'Christian the Lion Reunion',
  'The Social Revolution',
  ' The Teacher Who Changed My Life by Dan Lock'
];
List<String> des = [
  'Perfect for: When you need to be reminded that you have fewer limitations than you think.',
  'Perfect for: When you’re feeling like you haven’t made any progress.',
  'Perfect for: When life deals you an obstacle, set back, or tragedy.',
  'Perfect for: When people try to hold you back or tell you to “be realistic.”',
  'Perfect for: Gaining perspective and remembering everything you have to be thankful for.',
  'Perfect for: When you’re not taking responsibility for your life or situation.',
  'Perfect for: Remembering the deep connection that we share with all living creatures on this planet.',
  'Perfect for: Reminding you that you’re more capable than you think you are.',
  'Perfect for: When you feel like you’re not getting anywhere and want to give up.',
  'Perfect for: Anyone who has bad habits, procrastinates, or wants to change their life for the better.',
  'Perfect for: Learning to live a life of abundance.',
  'Perfect for: Understanding that the journey matters more than the destination.',
  'Perfect for: Anyone who wants a career as an artist, creator, or entrepreneur.',
  'Perfect for: When you need a reminder to not become complacent.',
  'Perfect for: Anyone unhappy or unsatisfied with their day-to-day life.',
  'Perfect for: Anyone searching for more meaning and purpose in their life.',
  'Perfect for: Seeing the bond that humans and animals share.',
  'Perfect for: Remembering to seize every moment and create the life of your dreams.',
  'Perfect for: Reminding us that every interaction we have with another person can have far-reaching consequences – good or bad.'
];

List<String> url = [
  'https://youtu.be/jG7dSXcfVqE',
  'https://youtu.be/Hd_ptbiPoXM',
  'https://youtu.be/PKbet4RdSo4',
  'https://youtu.be/MEGSiX0JA-s',
  'https://youtu.be/zOzsjEmjjHs',
  'https://youtu.be/LxgU_aepGd0',
  'https://youtu.be/FZ-bJFVJ2P0',
  'https://youtu.be/nbW3avTBK1g',
  'https://youtu.be/9PzoxTgfRO0',
  'https://youtu.be/hz4NpIl0kYg',
  'https://youtu.be/V80-gPkpH6M',
  'https://youtu.be/r-Yn4b9iClE',
  'https://youtu.be/ikAb-NYkseI',
  'https://youtu.be/CgNx9Bgac1I',
  'https://youtu.be/P3MVKwzHjsA',
  'https://youtu.be/MAp0BTg2Trw',
  'https://youtu.be/rqhJuwUukX8',
  'https://youtu.be/LczkikAgAVE',
  'https://youtu.be/gq7xzCJJJeU',
];

class VideoSuggestion extends StatefulWidget {
  const VideoSuggestion({super.key});

  @override
  State<VideoSuggestion> createState() => _VideoSuggestionState();
}

class _VideoSuggestionState extends State<VideoSuggestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Motivational Videos'),
      ),
      body: ListView.builder(
          itemCount: 19,
          itemBuilder: (context, index) {
            return VideoCard(
              title: title[index],
              description: des[index],
              url: url[index],
            );
          }),
    );
  }
}
