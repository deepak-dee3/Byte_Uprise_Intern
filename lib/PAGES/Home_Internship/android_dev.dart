import 'package:flutter/material.dart';

class AndroidPage extends StatefulWidget {
  @override
  State<AndroidPage> createState() => _AndroidPageState();
}

class _AndroidPageState extends State<AndroidPage> {
  @override
  Widget build(BuildContext context) {
     var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: screenheight*0.25,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25))),
        title: Text('Android Development',style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal, ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              Stack(
                children: [
                  Container(
                    height: screenheight*0.29,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/androidimg.jpeg'), // Replace with actual image URL
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height:  screenheight*0.25,
                    decoration: BoxDecoration(
                      // gradient: LinearGradient(
                      //   colors: [Colors.black54, Colors.transparent],
                      //   begin: Alignment.bottomCenter,
                      //   end: Alignment.topCenter,
                      // ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Text(
                      'Android Development Internship',
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
              SizedBox(height:  screenheight*0.05),

              // Introduction Section
              Text(
                'Beginner Level',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              SizedBox(height:  screenheight*0.05),
              buildSubSection(
                'Introduction to Android Development',
                [
                  'Overview of Android OS',
                  'Setting up Android Studio',
                  'Introduction to Kotlin/Java for Android development',
                ],
              ),
               SizedBox(height:  screenheight*0.03),
              buildSubSection(
                'Building Your First Android App',
                [
                  'Understanding project structure',
                  'Activity lifecycle',
                  'Running the app on an emulator or physical device',
                ],
              ),
              SizedBox(height:  screenheight*0.03),
              buildSubSection(
                'User Interface (UI) Design',
                [
                  'XML layout design',
                  'Views and ViewGroups',
                  'Basic UI components: Buttons, TextView, EditText, etc.',
                  'ConstraintLayout, LinearLayout, RelativeLayout',
                ],
              ),
              SizedBox(height:  screenheight*0.03),
              buildSubSection(
                'Event Handling',
                [
                  'OnClickListeners',
                  'Touch gestures',
                  'Toast messages and Snackbars',
                ],
              ),
              SizedBox(height:  screenheight*0.05),

              // Intermediate Level
              Text(
                'Intermediate Level',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              SizedBox(height:  screenheight*0.05),
              buildSubSection(
                'Navigation in Android',
                [
                  'Intents (Explicit and Implicit)',
                  'Passing data between activities',
                  'Navigation components',
                ],
              ),
              SizedBox(height:  screenheight*0.03),
              buildSubSection(
                'RecyclerView and Adapters',
                [
                  'Creating lists with RecyclerView',
                  'Customizing items with Adapters',
                ],
              ),
              SizedBox(height:  screenheight*0.03),
              buildSubSection(
                'Fragments',
                [
                  'Creating and managing fragments',
                  'Fragment lifecycle',
                  'Communicating between fragments and activities',
                ],
              ),
              SizedBox(height:  screenheight*0.03),
              buildSubSection(
                'Data Storage',
                [
                  'SharedPreferences for key-value pairs',
                  'SQLite for structured data',
                  'Room Database (preferred approach)',
                ],
              ),
              SizedBox(height:  screenheight*0.03),
              buildSubSection(
                'Networking',
                [
                  'HTTP requests using Retrofit or Volley',
                  'Parsing JSON responses',
                  'Handling APIs',
                ],
              ),
             SizedBox(height:  screenheight*0.05),

              // Advanced Level
              Text(
                'Advanced Level',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
             SizedBox(height:  screenheight*0.05),
              buildSubSection(
                'Material Design',
                [
                  'Understanding Material Design principles',
                  'Animations and transitions',
                  'Theming and styles',
                ],
              ),
              SizedBox(height:  screenheight*0.03),
              buildSubSection(
                'Background Tasks',
                [
                  'Services (Foreground and Background)',
                  'WorkManager for deferred tasks',
                  'AlarmManager for scheduled tasks',
                ],
              ),
              SizedBox(height:  screenheight*0.03),
              buildSubSection(
                'Firebase Integration',
                [
                  'Firebase Authentication',
                  'Firestore or Realtime Database',
                  'Firebase Cloud Messaging (Push Notifications)',
                ],
              ),
              SizedBox(height:  screenheight*0.03),
              buildSubSection(
                'Advanced UI',
                [
                  'Custom views',
                  'Navigation Drawer and Tab Layouts',
                  'Bottom Navigation Bar',
                ],
              ),
              SizedBox(height:  screenheight*0.03),
              buildSubSection(
                'Testing',
                [
                  'Unit testing with JUnit',
                  'UI testing with Espresso',
                  'Debugging with Android Studio',
                ],
              ),
              SizedBox(height:  screenheight*0.03),
              buildSubSection(
                'Publishing the App',
                [
                  'Creating an APK/AAB',
                  'Google Play Store guidelines',
                  'Monetization options (Ads, In-App Purchases)',
                ],
              ),
             SizedBox(height:  screenheight*0.05),

              // Call to Action
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
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
                    style: TextStyle(fontSize: 18,color: Colors.white),
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
          
          color: Colors.white
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
                            Icon(Icons.check_circle, color: Colors.teal, size: 18),
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
