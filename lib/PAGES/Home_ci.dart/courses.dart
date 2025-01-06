import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  final List<String> courses = [
    'Introduction to Cyber Security',
    'Machine Learning Basics',
    'Data Science for Beginners',
    'Advanced Java Programming',
    'Web Development with Flutter',
  ]; // Add all the courses you offer here

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
        title: Text('Courses Offered',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                leading: Icon(Icons.book, color: Colors.teal),
                title: Text(courses[index], style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Click to know more'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Navigate to detailed page if needed
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
