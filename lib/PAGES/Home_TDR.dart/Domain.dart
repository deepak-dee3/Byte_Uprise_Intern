import 'package:flutter/material.dart';

class TechDomainPage extends StatelessWidget {
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
        title: Text('Tech Domains',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
       children: [
          _buildSourceSection('Machine Learning (ML) Websites ', [
            'TensorFlow (tensorflow.org)',
          'Kaggle (kaggle.com) - for datasets and ML competitions',
            'Scikit-learn (scikit-learn.org)',
            'Towards Data Science (towardsdatascience.com)',
          ], Colors.blue.shade50),
          _buildSourceSection('Data Science (DS) Websites', [
            'DataCamp (datacamp.com)',
            'Coursera (coursera.org) - Data Science specializations',
            'edX (edx.org) - Data Science programs from universities',
            'KDnuggets (kdnuggets.com) - News and articles for Data Science',
          ], Colors.green.shade50),
          _buildSourceSection('Artificial Intelligence (AI) Websites', [
            'OpenAI (openai.com)',
            'DeepMind (deepmind.com)',
            'AI Trends (aitrends.com)',
          ], Colors.orange.shade50),
          _buildSourceSection('Cloud Computing', [
            'AWS (aws.amazon.com)',
            'Google Cloud (cloud.google.com)',
            'Microsoft Azure (azure.microsoft.com)',
          ], Colors.purple.shade50),
          _buildSourceSection('Big Data Technologies', [
            'Hadoop (hadoop.apache.org)',
            'Apache Spark (spark.apache.org)',
            'Cloudera (cloudera.com)',
          ], Colors.teal.shade50),
        ],
      ),);
  }

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
