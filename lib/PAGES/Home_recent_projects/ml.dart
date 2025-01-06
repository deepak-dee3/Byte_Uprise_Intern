import 'package:flutter/material.dart';

class MachineLearningPage extends StatelessWidget {
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
        title: Text('Image Classification',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
                    'assets/ml_byte.jpeg', // Replace with your Machine Learning project image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: screenheight * 0.02),

              // Project Title
              Text(
                'Project Overview: Image Classification Using Convolutional Neural Networks (CNN)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenheight * 0.02),

              // Project Description
              Text(
                'This project involves building a Convolutional Neural Network (CNN) to classify images into different categories. The model learns patterns from a dataset of labeled images and makes predictions on new, unseen images.',
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
                '- CNN-based image classification\n- High accuracy with large datasets\n- Real-time image prediction\n- Visualizations of training process',
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
                '- Python for backend\n- TensorFlow/Keras for building the model\n- OpenCV for image preprocessing\n- Matplotlib for visualizations',
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
                '1. Dataset Collection: Gather and label a large dataset of images.\n'
                '2. Data Preprocessing: Preprocess the images (resize, normalize).\n'
                '3. Model Training: Train the CNN model on the dataset.\n'
                '4. Evaluation: Evaluate the model’s performance on test data.\n'
                '5. Predictions: Use the trained model to classify new images.',
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
                'This project demonstrates how CNNs can be used for accurate image classification, providing a foundation for applications like object recognition, facial detection, and more.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
