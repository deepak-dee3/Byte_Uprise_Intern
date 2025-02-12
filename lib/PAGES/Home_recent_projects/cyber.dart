import 'package:flutter/material.dart';

class CyberSecurityPage extends StatelessWidget {
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
        title: Text('Phishing Detection',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Project Image
              Container(
                height: screenheight * 0.25,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/cyber1.jpeg', // Your Cyber Security project image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: screenheight * 0.02),

              // Project Title
              Text(
                'Project Overview: Phishing Detection System',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenheight * 0.02),

              // Project Descripti
              Text(
                'In this project, we developed a system to detect phishing emails using machine learning. Phishing is a fraudulent attempt to obtain sensitive information by disguising as a trustworthy entity.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: screenheight * 0.02),

              // Key Features
              Text(
                'Key Features:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenheight * 0.01),
              Text(
                '- Real-time phishing email detection\n- Machine learning algorithm (Random Forest)\n- Detection of malicious links and attachments\n- Alerts and warnings for suspicious emails',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: screenheight * 0.02),

              // Technology Used
              Text(
                'Technologies Used:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenheight * 0.01),
              Text(
                '- Flutter for Frontend\n- Python for backend ML model\n- Firebase for notifications\n- TensorFlow for Machine Learning',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: screenheight * 0.02),

              // How It Works
              Text(
                'How It Works:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenheight * 0.01),
              Text(
                '1. Data Collection: Gather phishing email data (URLs, attachments).\n'
                '2. Data Preprocessing: Clean and structure data.\n'
                '3. Machine Learning Model: Train a model to detect phishing attempts.\n'
                '4. Detection: The app scans incoming emails for potential phishing signs.\n'
                '5. Alerts: User is notified when a phishing attempt is detected.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: screenheight * 0.02),

              // Conclusion
              Text(
                'Conclusion:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenheight * 0.01),
              Text(
                'This project helps protect users from online phishing scams, enhancing cybersecurity by using automated detection powered by machine learning.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
