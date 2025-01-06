import 'dart:async';
import 'package:byte_uprise/PAGES/Home_Internship/ai.dart';
import 'package:byte_uprise/PAGES/Home_Internship/android_dev.dart';
import 'package:byte_uprise/PAGES/Home_Internship/software_dev.dart';
import 'package:byte_uprise/PAGES/Home_TDR.dart/Domain.dart';
import 'package:byte_uprise/PAGES/Home_TDR.dart/Reviews.dart';
import 'package:byte_uprise/PAGES/Home_TDR.dart/top_courses.dart';
import 'package:byte_uprise/PAGES/Home_ci.dart/courses.dart';
import 'package:byte_uprise/PAGES/Home_ci.dart/internship.dart';
import 'package:byte_uprise/PAGES/Home_recent_projects/cyber.dart';
import 'package:byte_uprise/PAGES/Home_recent_projects/ds.dart';
import 'package:byte_uprise/PAGES/Home_recent_projects/ml.dart';
import 'package:flutter/material.dart';



class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late ScrollController _scrollController;
  late ScrollController _scrollController2;
    int _currentIndex2 = 0;
  
  late Timer _timer;
  late Timer _timer2;
  
  int _currentIndex = 0;


  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController2 = ScrollController();
 
    // Listen to scroll position changes
    _scrollController.addListener(() {
      // Calculate which index is currently visible based on scroll offset
      int newIndex = (_scrollController.offset / (MediaQuery.of(context).size.width * 0.7)).round();
      if (newIndex != _currentIndex) {
        setState(() {
          _currentIndex = newIndex; // Update the current index based on scroll position
        });
      }
    });

    // Timer to scroll automatically every 5 seconds
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentIndex < 4) {
        _currentIndex++;
      } else {
        _currentIndex = 0; // Reset to the first item when reaching the end
      }
      _scrollController.animateTo(
        _currentIndex * MediaQuery.of(context).size.width * 0.7, // Scroll by item width
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });


     _scrollController2.addListener(() {
      int newIndex = (_scrollController2.offset /
              (MediaQuery.of(context).size.width * 0.7))
          .round();
      if (newIndex != _currentIndex2) {
        setState(() {
          _currentIndex2 = newIndex;
        });
      }
    });

    _timer2 = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      setState(() {
        if (_currentIndex2 < 4) {
          _currentIndex2++;
        } else {
          _currentIndex2 = 0;
        }
        _scrollController2.animateTo(
          _currentIndex2 * MediaQuery.of(context).size.width * 0.7,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      });
    });



  }

  


  


  

  @override
  void dispose() {
    _scrollController.dispose();
     _scrollController2.dispose();

    _timer.cancel();
    _timer2.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 243, 243),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              SizedBox(height: screenheight * 0.04),
              Container(
                height: screenheight * 0.15,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Column(
                          children: [
                            Text(
                              'Welcome To',
                              style: TextStyle(fontSize: 16),
                            ),
                            ShaderMask(
                              shaderCallback: (bounds) => LinearGradient(
                                colors: [Colors.purple, Colors.blue],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(bounds),
                              child: Text(
                                '  ByteUprise',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
Padding(
  padding: EdgeInsets.only(top: 20),
  child: Material(
    elevation: 6, // Slightly increased elevation for a more prominent shadow
    shadowColor: Colors.black.withOpacity(0.8), // Subtle shadow effect
    shape: CircleBorder(), // Ensure circular shape
    color: Colors.transparent, // Set material background to transparent
    child: CircleAvatar(
      radius: 27, // Adjusted size for better visibility
      backgroundColor: Colors.white, // White background color
      child: ShaderMask(
        shaderCallback: (bounds) => LinearGradient(
          colors: [Colors.blue, Colors.purple], // Gradient effect for icon
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(bounds),
        child: Center(
          child: Icon(
            Icons.person,
            size: 30, // Slightly larger icon for better clarity
            color: Colors.white, // Icon color set to white
          ),
        ),
      ),
    ),
  ),
)

                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 60),
                child: Container(
                  height: screenheight * 0.06,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 233, 232, 232),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Search for course',
                          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.search,
                          color: Colors.purple,
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenheight * 0.03),

Container(
  height: screenheight * 0.18,
  margin: EdgeInsets.symmetric(horizontal: 10),
  child: ListView.builder(
    controller: _scrollController,
    scrollDirection: Axis.horizontal,
    itemCount: 4, // Number of images
    itemBuilder: (context, index) {
      // Updated image paths
      List<String> imagePaths = [
        'assets/bb.jpeg',
        'assets/sw2.jpeg',
        'assets/sw3.jpeg',
        'assets/sw4.jpeg'
      ];

      return Padding(
        padding: EdgeInsets.only(right: 16),
        child: Container(
          width: screenwidth * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePaths[index],
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    },
  ),
),


        
              SizedBox(height: screenheight*0.03,),
        
Padding(
  padding: EdgeInsets.only(left: 20),
  child: Align(
    alignment: Alignment.centerLeft,
    child: Text(
      'Courses',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
  ),
),
SizedBox(height: screenheight * 0.03),

Padding(
  padding: EdgeInsets.only(left: 20),
  child: Container(
    height: screenheight * 0.33,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        // Course 1
        GestureDetector(
          onTap: () {
            // Interaction for the first course card
            print("Tapped on Animations in SwiftUI");
          },
          child: Container(
            width: screenwidth * 0.65,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Animations in SwiftUI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Build and animate an iOS app from scratch',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  '61 SECTIONS - 11 HOURS',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/ssss.jpeg'),
                      radius: 16,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/ddddd.jpeg'),
                      radius: 16,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/hhhh.jpeg'),
                      radius: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        
        // Course 2
        GestureDetector(
          onTap: () {
            // Interaction for the second course card
            print("Tapped on Animations in Flutter");
          },
          child: Container(
            width: screenwidth * 0.65,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withOpacity(0.3),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Animations in Flutter',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Build and animate a cross-platform app',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  '45 SECTIONS - 8 HOURS',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/ssss.jpeg'),
                      radius: 16,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/ddddd.jpeg'),
                      radius: 16,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/hhhh.jpeg'),
                      radius: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        
        // Course 3
        GestureDetector(
          onTap: () {
            // Interaction for the third course card
            print("Tapped on UI/UX Design Principles");
          },
          child: Container(
            width: screenwidth * 0.65,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.green.withOpacity(0.3),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'UI/UX Design Principles',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Design interfaces and experiences that work',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  '30 SECTIONS - 6 HOURS',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/ssss.jpeg'),
                      radius: 16,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/ddddd.jpeg'),
                      radius: 16,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/hhhh.jpeg'),
                      radius: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        
        // New Course 4
        GestureDetector(
          onTap: () {
            print("Tapped on Machine Learning Basics");
          },
          child: Container(
            width: screenwidth * 0.65,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.orange.withOpacity(0.3),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Machine Learning Basics',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Introduction to machine learning concepts',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  '50 SECTIONS - 10 HOURS',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/ssss.jpeg'),
                      radius: 16,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/ddddd.jpeg'),
                      radius: 16,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/hhhh.jpeg'),
                      radius: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        
        // New Course 5
        GestureDetector(
          onTap: () {
            print("Tapped on Web Development Fundamentals");
          },
          child: Container(
            width: screenwidth * 0.65,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.3),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Web Development Fundamentals',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Learn the basics of web development',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  '70 SECTIONS - 15 HOURS',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/ssss.jpeg'),
                      radius: 16,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/ddddd.jpeg'),
                      radius: 16,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/hhhh.jpeg'),
                      radius: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        
        // New Course 6
        GestureDetector(
          onTap: () {
            print("Tapped on Data Science Introduction");
          },
          child: Container(
            width: screenwidth * 0.65,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.yellow.withOpacity(0.3),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Data Science Introduction',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Explore the fundamentals of data science',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  '60 SECTIONS - 12 HOURS',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/ssss.jpeg'),
                      radius: 16,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/ddddd.jpeg'),
                      radius: 16,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/hhhh.jpeg'),
                      radius: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  ),
)
,

         SizedBox(height: screenheight*0.03,),

        Padding(
  padding: EdgeInsets.only(left: 20),
  child: Align(
    alignment: Alignment.centerLeft,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Internship',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.arrow_circle_right_outlined,
            size: 30,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  ),
),
SizedBox(height: screenheight * 0.03),
Padding(
  padding: EdgeInsets.only(left: 20),
  child: Container(
    height: screenheight * 0.22,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        GestureDetector(
          onTap: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AndroidPage()));
          },
          child: Container(
            width: screenwidth * 0.40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 228, 68, 156).withOpacity(0.8),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                topRight: Radius.circular(70),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.android,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Android Development',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '525 enrolled',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AiPage()));
          },
          child: Container(
            width: screenwidth * 0.40,
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                topRight: Radius.circular(70),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.memory,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Artificial Intelligence',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '602 enrolled',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SoftwareDevelopmentPage()));
          },
          child: Container(
            width: screenwidth * 0.40,
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.orange.withOpacity(0.5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                topRight: Radius.circular(70),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.computer,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Software Development',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '434 enrolled',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  ),
)
,

         SizedBox(height: screenheight*0.03,),
                      Padding(padding: EdgeInsets.only(left: 20),
                child: Align(alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Achievements',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                      Padding(padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.arrow_circle_right_outlined,size: 30,color: Colors.grey))
                     // Text('details   ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 55, 61, 236)),)
                    ],
                  )),
              ),

              SizedBox(height: screenheight*0.02,),

              Padding(padding: EdgeInsets.all(25),
              child: Container(
                
                
                height: screenheight*0.45,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white,
                boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3), 
        spreadRadius: 2, 
        blurRadius: 8,
        offset: Offset(0, 4), 
      ),
    ],

                
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(100)),

                

                ),
                child: Column(
                  children: [
                
                    Padding(padding: EdgeInsets.only(left: 30,top: 40),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 20),
                                child: Column(
                                  children: [
                                    Text('Active Users    ',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                                     Text('1000 +',style: TextStyle(fontWeight: FontWeight.bold),),
                                     SizedBox(height: screenheight*0.05,),
                                      Text('Client Reviews ',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                                       Text('2000 +',style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 35,top: 20),
                                child: CircleAvatar(
                                  radius: 70,backgroundColor:Colors.amber,
                                  child: CircleAvatar(radius: 60,backgroundColor: Colors.white,
                                    child: Padding(padding: EdgeInsets.only(top:35),
                                      child: Column(
                                        children: [
                                          Text('1234',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                          Text('Active Projects',style: TextStyle(fontSize: 13,color: Colors.grey,),)
                                        ],
                                      ),
                                    )),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                
                    Padding(padding: EdgeInsets.only(left: 5,top: 60),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Internship',style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: screenheight*0.01,),
                                Container(height: screenheight*0.01,
                               width: screenwidth*0.2,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.amber.withOpacity(0.4)),
                               
                               ),
                               SizedBox(height: screenheight*0.01,),
                                Text('100 +',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                              ],
                            ),
                         
                                                Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Courses',style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(height: screenheight*0.01,),
                            Container(height: screenheight*0.01,
                           width: screenwidth*0.15,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
                              color: Colors.blue.withOpacity(0.4)),
                           
                           ),
                           SizedBox(height: screenheight*0.01,),
                            Text('40 +',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                          ],
                        ),
                                                Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Projects',style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(height: screenheight*0.01,),
                            Container(height: screenheight*0.01,
                           width: screenwidth*0.1,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.red.withOpacity(0.4)),
                            
                           ),
                           SizedBox(height: screenheight*0.01,),
                            Text('20 +',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                          ],
                        ),
                         ],
                        ),
                      ],),
                    )
                  ],
                
                ),
              ),),
               SizedBox(height: screenheight*0.02,),

               Padding(padding: EdgeInsets.only(left: 15,right: 15),
               child: Container(
                height: screenheight*0.09,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 181, 112, 240).withOpacity(0.5)),
                child: Row(
                  children: [
                    SizedBox(width: screenwidth*0.05,),
                    Icon(Icons.lightbulb_rounded,color: Colors.amber,),
                    Text('  Start you journey with ByteUprise',style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
               ),),
                SizedBox(height: screenheight*0.05,),

              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Row(
                 
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                       onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CoursesPage()));
                      },
                      child: Container(
                        height: screenheight*0.2,
                        width: screenwidth*0.40,
                        decoration: BoxDecoration( boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3), 
                              spreadRadius: 2, 
                              blurRadius: 8,
                              offset: Offset(0, 4), 
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),color: Colors.white,),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.notes,size: 35,color: Colors.red,),
                                SizedBox(height: screenheight*0.02,),
                              Text('Courses',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                    ),
                   
                     GestureDetector(
                       onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>InternshipsPage()));
                      },
                       child: Container(
                        height: screenheight*0.2,
                        width: screenwidth*0.40,
                        decoration: BoxDecoration(
                           boxShadow: [
                             BoxShadow(
                               color: Colors.black.withOpacity(0.3), 
                               spreadRadius: 2, 
                               blurRadius: 8,
                               offset: Offset(0, 4), 
                             ),
                           ],
                          borderRadius: BorderRadius.circular(10),color: Colors.white,),
                         child: Center(
                           child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.library_add,size: 35,color: Colors.blue,),
                              SizedBox(height: screenheight*0.02,),
                              Text('Internship',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                                                 ),
                         ),
                                           ),
                     ),
                  ],
                ),
              ),
              SizedBox(height: screenheight*0.03,),
                      Padding(padding: EdgeInsets.only(left: 20),
                child: Align(alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Recent Projects',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                      Padding(padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.arrow_circle_right_outlined,size: 30,color: Colors.grey))
                     // Text('details   ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 55, 61, 236)),)
                    ],
                  )),
              ),
              SizedBox(height: screenheight*0.03,),
                      Padding(padding: EdgeInsets.only(left: 20),
          child: Container(
                  height: screenheight * 0.22,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                         onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CyberSecurityPage()));
                      },
                        child: Container(
                          width: screenwidth * 0.40,
                          //margin: EdgeInsets.on(horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.1),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                          ),
                          child:Column(
                            children: [
                              Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: screenheight * 0.15,
                            width: screenwidth * 0.33,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/cyber1.jpeg', 
                                fit: BoxFit.cover, 
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenheight * 0.01),
                        Text(
                          'Cyber Security',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                         onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DataSciencePage()));
                      },
                        child: Container(
                          width: screenwidth * 0.40,
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.1),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                          ),
                          child:Column(
                            children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: screenheight * 0.15,
                            width: screenwidth * 0.33,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/data_byte.jpeg', // Replace with your image path
                                fit: BoxFit.cover, // Ensures the image fits well within the container
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenheight * 0.01),
                        Text(
                          'Data Science',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                         onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MachineLearningPage()));
                      },
                        child: Container(
                          width: screenwidth * 0.40,
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.1),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                          ),
                          child: Column(
                            children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: screenheight * 0.15,
                            width: screenwidth * 0.33,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/ml_byte.jpeg', 
                                fit: BoxFit.cover, 
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenheight * 0.01),
                        Text(
                          'Machine Learning',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ),

         SizedBox(height: screenheight*0.05,),

         
                       Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Row(
                 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TopCoursesPage()));
                      },
                      child: Container(
                        height: screenheight*0.15,
                        width: screenwidth*0.28,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.golf_course,size: 35,color: Colors.red,),
                                SizedBox(height: screenheight*0.02,),
                              Text('Top Courses',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                    ),
                   
                     GestureDetector(
                      onTap:()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> TechDomainPage()));

                      },
                       child: Container(
                        height: screenheight*0.15,
                        width: screenwidth*0.28,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                         child: Center(
                           child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.domain,size: 35,color: Colors.green,),
                              SizedBox(height: screenheight*0.02,),
                              Text('Domain',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                                                 ),
                         ),
                                           ),
                     ),

                    GestureDetector(
                      onTap:()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ReviewsPage()));

                      },
                      child: Container(
                        height: screenheight*0.15,
                        width: screenwidth*0.28,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                         child: Center(
                           child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.reviews,size: 35,color: Colors.amber,),
                              SizedBox(height: screenheight*0.02,),
                              Text('Reviews',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                                                 ),
                         ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenheight*0.03,),
              Center(child: Text('Ratings',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),)),
              SizedBox(height: screenheight*0.03,),


            // Container(
            //   height: screenheight * 0.18,
            //   margin: EdgeInsets.symmetric(horizontal: 10),
            //   child: ListView.builder(
            //     controller: _scrollController2,
            //     scrollDirection: Axis.horizontal,
            //     itemCount: 5,
            //     itemBuilder: (context, index) {
            //       return Padding(
            //         padding: EdgeInsets.only(right: 16),
            //         child: Container(
            //           width: screenwidth * 0.7,
            //           decoration: BoxDecoration(
            //             gradient: LinearGradient(
            //               colors: [Colors.orange, Colors.redAccent],
            //               begin: Alignment.topLeft,
            //               end: Alignment.bottomRight,
            //             ),
            //             borderRadius: BorderRadius.circular(20),
            //           ),
            //           child: Center(
            //             child: Text(
            //               'Second Item $index',
            //               style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 18,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
            Container(
  height: screenheight * 0.18,
  margin: EdgeInsets.symmetric(horizontal: 10),
  child: ListView.builder(
    controller: _scrollController2,
    scrollDirection: Axis.horizontal,
    itemCount: 3, // Set this to the number of images you have
    itemBuilder: (context, index) {
      // Replace these with your actual image paths
      List<String> imagePaths = [
        'assets/R1.png',
        'assets/R2.png',
        'assets/R3.png',
      ];

      return Padding(
        padding: EdgeInsets.only(right: 16),
        child: Container(
          width: screenwidth * 0.8,
          
          decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   colors: [Colors.orange, Colors.redAccent],
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            // ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePaths[index],
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    },
  ),
),

            SizedBox(height: screenheight*0.03,)
 

        
            ],
          ),
        ),
      ),
    );
  }
}
