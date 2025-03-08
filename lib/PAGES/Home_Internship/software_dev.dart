import 'package:flutter/material.dart';

class SoftwareDevelopmentPage extends StatefulWidget {
  @override
  State<SoftwareDevelopmentPage> createState() => _SoftwareDevelopmentPageState();
}

class _SoftwareDevelopmentPageState extends State<SoftwareDevelopmentPage> {
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: screenheight * 0.25,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
        ),
        title: Text(
          'Software Development',
          style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Image with Title Overlay
              Stack(
                children: [
                  Container(
                    height: screenheight * 0.29,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/soft.jpeg'),
                        fit: BoxFit.cover
 ,),), ),
                  Positioned(
                    bottom: 20,
                    left: 11,
                    child: Text(
                      'Software Development Internship',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 6.0,
                            color: Colors.black,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],),
              SizedBox(height: screenheight * 0.05),

              // Beginner Level
              Text(
                'Beginner Level',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: screenheight * 0.05),
              buildSubSection(
                'Introduction to Software Development',
                [
                  'Understanding the software development lifecycle (SDLC)',
                  'Introduction to programming languages (Python, Java, etc.)',
                  'Setting up a development environment (IDE, tools)',
                ],
              ),
              SizedBox(height: screenheight * 0.03),
              buildSubSection(
                'Version Control',
                [
                  'Introduction to Git and GitHub',
                  'Basic Git commands (clone, commit, push, pull)',
                  'Collaborating on projects using version control',
                ],
              ),
              SizedBox(height: screenheight * 0.03),
              buildSubSection(
                'Frontend Development Basics',
                [
                  'HTML, CSS, and JavaScript',
                  'Responsive design principles',
                  'Building simple static web pages',
                ],
              ),
              SizedBox(height: screenheight * 0.05),

              // Intermediate Level
              Text(
                'Intermediate Level',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: screenheight * 0.05),
              buildSubSection(
                'Backend Development',
                [
                  'Introduction to backend frameworks (Node.js, Django, Flask)',
                  'Understanding RESTful APIs',
                  'Database integration (SQL and NoSQL)',
                ],
              ),
              SizedBox(height: screenheight * 0.03),
              buildSubSection(
                'Software Design Principles',
                [
                  'Understanding Object-Oriented Programming (OOP)',
                  'SOLID principles',
                  'Design patterns (e.g., Singleton, Factory)',
                ],
              ),
              SizedBox(height: screenheight * 0.03),
              buildSubSection(
                'Testing and Debugging',
                [
                  'Writing unit tests',
                  'Using debugging tools in IDEs',
                  'Understanding test-driven development (TDD)',
                ],
              ),
              SizedBox(height: screenheight * 0.03),
              buildSubSection(
                'Deployment',
                [
                  'Hosting web applications on cloud platforms',
                  'Introduction to CI/CD pipelines',
                  'Basic containerization with Docker',
                ],
              ),
              SizedBox(height: screenheight * 0.05),

              // Advanced Level
              Text(
                'Advanced Level',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: screenheight * 0.05),
              buildSubSection(
                'Advanced Frontend',
                [
                  'Using modern frontend frameworks (React, Angular, Vue)',
                  'State management (Redux, MobX)',
                  'Building single-page applications (SPAs)',
                ],
              ),
              SizedBox(height: screenheight * 0.03),
              buildSubSection(
                'Advanced Backend',
                [
                  'Authentication and Authorization (OAuth, JWT)',
                  'Scalable architecture with microservices',
                  'Serverless computing',
                ],
              ),
              SizedBox(height: screenheight * 0.03),
              buildSubSection(
                'Performance Optimization',
                [
                  'Improving application performance',
                  'Monitoring and logging',
                  'Database optimization techniques',
                ],
              ),
              SizedBox(height: screenheight * 0.03),
              buildSubSection(
                'Security in Software Development',
                [
                  'Understanding common vulnerabilities (OWASP Top 10)',
                  'Implementing secure coding practices',
                  'Introduction to penetration testing',
                ],
              ),
              SizedBox(height: screenheight * 0.03),
              buildSubSection(
                'Career Preparation',
                [
                  'Building a professional portfolio',
                  'Cracking technical interviews',
                  'Contributing to open-source projects',
                ],
              ),
              SizedBox(height: screenheight * 0.05),

              // Call to Action
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    // Navigate to registration or other functionality
                  },
                  child: Text(
                    'Register Now',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper Widget for Sub-Sections
  Widget buildSubSection(String title, List<String> items) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5), // Shadow color with opacity
              spreadRadius: 2, // Spread radius
              blurRadius: 10, // Blur radius
              offset: Offset(4, 4), // Offset in x and y directions
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: screenheight*0.008),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: items
                  .map((item) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            Icon(Icons.check_circle, color: Colors.blue, size: 18),
                            SizedBox(width: screenwidth*0.008),
                            Expanded(
                              child: Text(
                                item,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
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
