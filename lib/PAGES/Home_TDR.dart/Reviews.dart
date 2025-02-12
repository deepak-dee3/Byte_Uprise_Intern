import 'package:flutter/material.dart';

class ReviewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(centerTitle: true,
         toolbarHeight: screenheight * 0.25,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        title: Text('Reviews',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
          children: [
            _buildSourceSection('Course Reviews', [
              'Class Central',
              'CourseTalk',
            ], Colors.blue.shade50),
            _buildSourceSection('Productivity or Learning Tool Reviews', [
              'G2',
              'Capterra',
            ], Colors.green.shade50),
            _buildSourceSection('Customer Feedback', [
              'Amazon course and book reviews',
              'User feedback on apps or websites offering these services',
            ], Colors.orange.shade50),
            _buildSourceSection('Social Media', [
              'LinkedIn and Twitter reviews about professional development platforms',
              'Reddit subreddits like r/learnprogramming or r/coursera.',
            ], Colors.purple.shade50),
          ],
        ),);}

  Widget _buildSourceSection(String title, List<String> sources, Color containerColor) {
    return Padding(
     padding: EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(4, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: sources
                  .map((source) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          '- $source',
                          style: TextStyle(fontSize: 16),
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
