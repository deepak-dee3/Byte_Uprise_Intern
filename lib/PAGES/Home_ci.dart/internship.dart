import 'package:flutter/material.dart';

class InternshipsPage extends StatelessWidget {
  final List<String> internships = [
    'Cyber Security Intern',
    'Data Science Intern',
    'Web Development Intern',
    'Mobile App Development Intern',
    'Machine Learning Intern',
  ]; // Add all the internships you offer here

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
        title: Text('Internships Offered',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: internships.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                leading: Icon(Icons.work, color: Colors.blue),
                title: Text(internships[index], style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Click to apply'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Navigate to internship application page or details
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
