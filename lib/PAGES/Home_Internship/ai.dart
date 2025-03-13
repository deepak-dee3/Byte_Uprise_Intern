import 'package:flutter/material.dart';

class AiPage extends StatefulWidget {
  @override
  State<AiPage> createState() => _AiPageState();
}

class _AiPageState extends State<AiPage> {
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;

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
        title: Text(
          'Artificial Intelligence',
          style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
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
                        image: AssetImage('assets/aiiii.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Text(
                      'AI Internship Program',
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
                ],
              ),
              SizedBox(height: screenheight * 0.05),

              // Beginner Level
              Text(
                'Beginner Level',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(height: screenheight * 0.05),
              buildSubSection(
                'Introduction to Artificial Intelligence',
                [
                  'Definition and applications of AI',
                  'History and evolution of AI',
                  'Key domains of AI: Machine Learning, NLP, Computer Vision , etc.',
                ],
              ),
              SizedBox(height: screenheight * 0.03),
              buildSubSection(
                'Mathematics for AI',
                [
                  'Linear Algebra: Matrices, Vectors',
                  'Probability and Statistics: Distributions, Mean, Variance',
                  'Calculus basics: Differentiation and Gradients',
                ],
              ),
              SizedBox(height: screenheight * 0.03),
              buildSubSection(
                'Programming Foundations for AI',
                [
                  'Introduction to Python',
                  'Key libraries: NumPy, Pandas, Matplotlib',
                  'Mini projects and basic exercises',
                ],
              ),
              SizedBox(height: screenheight * 0.05),
  // Intermediate Level
              Text(
                'Intermediate Level',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(height: screenheight * 0.05),
              buildSubSection(
                'Machine Learning Basics',
                [
                  'Supervised vs Unsupervised Learning',
                  'Common algorithms: Linear Regression, k-Nearest Neighbors',
                  'Building models with Scikit-learn',
                ],
              ),
              SizedBox(height: screenheight * 0.03),
              buildSubSection(
                'Neural Networks',
                [
                  'Introduction to perceptrons',
                  'Activation functions and training basics',
                  'Building basic neural networks with TensorFlow or PyTorch',
                ],
              ),
              SizedBox(height: screenheight * 0.03),
              buildSubSection(
                'Natural Language Processing (NLP)',
                [
                  'Text preprocessing: Tokenization, Stopword Removal',
                  'Sentiment analysis using TextBlob',
                  'Word embeddings: Word2Vec, GloVe',
                ],
              ),
              SizedBox(height: screenheight * 0.05),

              // Advanced Level
              Text(
                'Advanced Level',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(height: screenheight * 0.05),
              buildSubSection(
                'Deep Learning',
                [
                  'Advanced CNN architectures: ResNet, VGG, Inception',
                  'Recurrent Neural Networks (RNNs) and LSTMs',
                  'Transfer Learning for complex tasks',
                ],
              ),
              SizedBox(height: screenheight * 0.03),
              buildSubSection(
                'AI in Real-world Applications',
                [
                  'Building recommendation systems',
                  'AI-powered chatbots',
                  'Speech recognition and synthesis', ],
              ),
              SizedBox(height: screenheight * 0.03),
              buildSubSection(
                'AI Deployment',
                [
                  'Model optimization and serialization',
                  'Deploying AI models using Flask or Django',
                  'Cloud platforms for AI: AWS, Google AI',
                ],
              ),
              SizedBox(height: screenheight * 0.05),

              // Call to Action
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    padding:
                        EdgeInsets.symmetric(horizontal: 24, vertical: 12),
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
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(4, 4),
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
                            Icon(Icons.check_circle,
                                color: Colors.deepPurple, size: 18),
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
