
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
 
    return Scaffold(
      backgroundColor: Colors.grey[100], // Softer background
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search...".toUpperCase(),
            hintStyle: TextStyle(color: Colors.grey[600]),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.grey),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: screenheight * 0.02),
          Expanded(
            child: ListView(
              children: [
                _buildPost(
                  "ByteUprise",
                  "@byte_uprise",
                  "Join the ByteUprise Campus Ambassador Program Today and Lead the Tech Future! Apply Now! 🚀",
                  10,
                  1,
                  100,
                  screenwidth,
                  screenheight,
                ),
                _buildPost(
                  "ByteUprise",
                  "@pratik",
                  "Embark on a journey of hands-on learning and skill mastery with our dynamic Virtual Internship opportunities. 🌟",
                  5,
                  2,
                  50,
                  screenwidth,
                  screenheight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPost(String name, String handle, String content, int comments, int retweets, int likes, double screenwidth, double screenheight) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenwidth * 0.05, vertical: screenheight * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile & Content
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text(name[0], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: screenwidth * 0.03),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: name,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                        children: [
                          TextSpan(
                            text: " $handle • 5m",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenheight * 0.01),
                    Text(
                      content,
                      style: TextStyle(fontSize: 15, color: Colors.black, height: 1.4),
                    ),
                  ],
                ),
              ),
              SizedBox(width: screenwidth * 0.03),
              Icon(Icons.more_vert, color: Colors.grey),
            ],
          ),
          
          // Interactions
          SizedBox(height: screenheight * 0.015),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildIconText(Icons.comment, comments),
              _buildIconText(Icons.repeat, retweets),
              _buildIconText(Icons.favorite_border, likes),
              Icon(Icons.share, color: Colors.grey, size: screenwidth * 0.05),
            ],
          ),
          Divider(thickness: 0.8, color: Colors.grey[400], indent: screenwidth * 0.05, endIndent: screenwidth * 0.05),
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, int count) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey[600], size: 20),
        SizedBox(width: 4),
        Text(
          count.toString(),
          style: TextStyle(color: Colors.grey[600], fontSize: 14),
        ),
      ],
    );
  }
}
