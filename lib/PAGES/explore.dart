import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
 
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search...",
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.grey),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: screenheight * 0.05),
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
                  screenwidth, // Pass screenwidth here
                  screenheight, // Pass screenheight here
                ),
                _buildPost(
                  "ByteUprise",
                  "@pratik",
                  "Embark on a journey of hands-on learning and skill mastery with our dynamic Virtual Internship opportunities. 🌟",
                  5,
                  2,
                  50,
                  screenwidth, // Pass screenwidth here
                  screenheight, // Pass screenheight here
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
      padding: EdgeInsets.symmetric(horizontal: screenwidth * 0.04, vertical: screenheight * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                child: Text(name[0], style: TextStyle(color: Colors.black)),
              ),
              SizedBox(width: screenwidth * 0.03),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: " $handle • 5m",
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenheight * 0.01),
                    Text(
                      content,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: screenwidth * 0.03),
              Icon(Icons.more_vert, color: Colors.grey),
            ],
          ),
          SizedBox(height: screenheight * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildIconText(Icons.comment, comments),
              _buildIconText(Icons.repeat, retweets),
              _buildIconText(Icons.favorite_border, likes),
              Icon(Icons.share, color: Colors.grey, size: screenwidth * 0.05),
            ],
          ),
          Divider(thickness: 1, color: Colors.grey),
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, int count) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey, size: 20),
        SizedBox(width: 4),
        Text(
          count.toString(),
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
