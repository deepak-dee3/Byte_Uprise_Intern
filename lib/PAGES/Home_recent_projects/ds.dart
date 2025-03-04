import 'package:flutter/material.dart';

class DataSciencePage extends StatelessWidget {
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
        title: Text('Predictive Analytics',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: screenheight * 0.25,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/data_byte.jpeg', // Replace with your Data Science project image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: screenheight * 0.02),

              // Project Title
              Text(
                'Project Overview: Predictive Analytics for Business Decisions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenheight * 0.02),

              // Project Description
              Text(
                'This project involved creating a predictive analytics model to help businesses forecast future sales based on historical data. By analyzing past trends, the model makes predictions to guide decision-making.',
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
                '- Sales prediction for future quarters\n- Time series forecasting\n- Trend analysis\n- Visualization of predictions',
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
                '- Python for data analysis\n- Pandas, NumPy for data processing\n- Matplotlib for visualization\n- Scikit-learn for predictive models',
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
                '1. Data Collection: Gather historical sales data from various sources.\n'
                '2. Data Preprocessing: Clean and prepare data for analysis.\n'
                '3. Model Training: Train a predictive model using historical data.\n'
                '4. Predictions: Make predictions for future sales based on trends.\n'
                '5. Visualization: Display predictions in charts and graphs.',
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
                'This project provides businesses with valuable insights into future sales, helping them plan for the upcoming quarters and optimize resources.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
