import 'package:flutter/material.dart';

class Courses extends StatefulWidget{
  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {



  int selectedIndex = -1; 




  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;


return Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 243, 243),


  body: SingleChildScrollView(
    scrollDirection: Axis.vertical,
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
                                'Start Learning',
                                style: TextStyle(fontSize: 16),
                              ),
                              ShaderMask(
                                shaderCallback: (bounds) => LinearGradient(
                                  colors: [Colors.purple, Colors.blue],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(bounds),
                                child: Text(
                                  'Our Course',
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
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: ShaderMask(
                              shaderCallback: (bounds) => LinearGradient(
                                colors: [Colors.blue, Colors.purple],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(bounds),
                              child: Icon(
                                Icons.person,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
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
                 Padding(padding: EdgeInsets.only(left: 20),
                  child: Align(alignment: Alignment.centerLeft,
                    child: Text('Category',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)),
                ),
                 SizedBox(height: screenheight*0.03,),
    
     Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = selectedIndex == 0 ? -1 : 0;  // Toggle selection
                });
              },
              child: Container(
                child: Center(
                  child: Text(
                    'UI/UX',
                    style: TextStyle(
                      color: selectedIndex == 0 ? Colors.white : Colors.purple, // White text for selected container
                    ),
                  ),
                ),
                height: screenheight * 0.055,
                width: screenwidth * 0.3,
                decoration: BoxDecoration(
                  color: selectedIndex == 0 ? const Color.fromARGB(255, 127, 8, 148) : Colors.transparent, // Purple fill for selected container
                  border: Border.all(
                    color: selectedIndex == 0 ? Colors.transparent : const Color.fromARGB(255, 127, 8, 148), // Purple border for unselected containers
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = selectedIndex == 1 ? -1 : 1;  // Toggle selection
                });
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Coding',
                    style: TextStyle(
                      color: selectedIndex == 1 ? Colors.white : const Color.fromARGB(255, 127, 8, 148),
                    ),
                  ),
                ),
                height: screenheight * 0.055,
                width: screenwidth * 0.3,
                decoration: BoxDecoration(
                  color: selectedIndex == 1 ? const Color.fromARGB(255, 127, 8, 148) : Colors.transparent,
                  border: Border.all(
                    color: selectedIndex == 1 ? Colors.transparent : const Color.fromARGB(255, 127, 8, 148),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = selectedIndex == 2 ? -1 : 2;  // Toggle selection
                });
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Basic UI',
                    style: TextStyle(
                      color: selectedIndex == 2 ? Colors.white : const Color.fromARGB(255, 127, 8, 148),
                    ),
                  ),
                ),
                height: screenheight * 0.055,
                width: screenwidth * 0.3,
                decoration: BoxDecoration(
                  color: selectedIndex == 2 ? const Color.fromARGB(255, 127, 8, 148) : Colors.transparent,
                  border: Border.all(
                    color: selectedIndex == 2 ? Colors.transparent : const Color.fromARGB(255, 127, 8, 148),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ],
        ),
      ),
    
                              SizedBox(height: screenheight*0.03,),
Padding(
  padding: EdgeInsets.only(left: 20),
  child: Container(
    height: screenheight * 0.22,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        // Course 1
        Container(
          width: screenwidth * 0.70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)), // Border radius for the container
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(40)), // Border radius for the image
            child: Image.asset(
              'assets/aid.jpeg', // Replace with your image path
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
        // Course 2
        Container(
          width: screenwidth * 0.70,
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)), // Border radius for the container
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(40)), // Border radius for the image
            child: Image.asset(
              'assets/rob.jpeg', // Replace with your image path
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
        // Course 3
        Container(
          width: screenwidth * 0.75,
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)), // Border radius for the container
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(40)), // Border radius for the image
            child: Image.asset(
              'assets/qm.jpeg', // Replace with your image path
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
      ],
    ),
  ),
),

    
           SizedBox(height: screenheight*0.03,),
    
             Padding(padding: EdgeInsets.only(left: 20),
                  child: Align(alignment: Alignment.centerLeft,
                    child: Text('Popular Courses',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)),
                ),
                 SizedBox(height: screenheight*0.01,),


Padding(
  padding: EdgeInsets.symmetric(horizontal: 10),
  child: ListView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(), // Prevent scrolling inside parent scroll view
    itemCount: 6, // 6 items
    itemBuilder: (context, index) {
      // List of asset images
      final imagePaths = [
        'assets/bbb.jpeg',
        'assets/gdd.jpeg',
        'assets/mad.jpeg',
        'assets/wad.jpeg',
        'assets/iot.jpeg',
        'assets/powb1.jpeg',
      ];

      // List of custom names for each image
      final names = [
        'Blockchain Technology',
        'Game Development',
        'Mobile App Development',
        'Web App Development',
        'Internet of Things',
        'Power BI'
      ];

      return Container(
        margin: EdgeInsets.symmetric(vertical: 10), // Add spacing between items
        decoration: BoxDecoration(
          
          
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // Adds a shadow effect
            ),
          ],
        ),
        child: Stack(
          children: [
            // Background image
            Image.asset(
              imagePaths[index],
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.15,
              width: double.infinity, // Takes full width of the parent
            ),
            // Semi-transparent overlay
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: double.infinity,
              color: Colors.black.withOpacity(0.5), // Adjust opacity here
            ),
            // Centered Text
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Center(
                child: Text(
                  names[index], // Custom name for each image
                  style: TextStyle(
                    color: const Color.fromARGB(255, 183, 183, 183),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  ),
),

// Padding(
//   padding: EdgeInsets.symmetric(horizontal: 10),
//   child: ListView.builder(
//     shrinkWrap: true,
//     physics: NeverScrollableScrollPhysics(), // Prevent scrolling inside parent scroll view
//     itemCount: 6, // 6 items
//     itemBuilder: (context, index) {
//       // List of asset images
//       final imagePaths = [
//         'assets/bbb.jpeg',
//         'assets/gdd.jpeg',
//         'assets/mad.jpeg',
//         'assets/wad.jpeg',
//         'assets/iot.jpeg',
//         'assets/powb1.jpeg',
//       ];

//       // List of custom names for each image
//       final names = [
//         'Blockchain Technology',
//         'Game Development',
//         'Mobile App Development',
//         'Web App Development',
//         'Internet of Things',
//         'Power BI'
//       ];

//       return Container(
//         margin: EdgeInsets.symmetric(vertical: 10), // Add spacing between items
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(40), // Apply border radius to the container
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 2,
//               blurRadius: 5,
//               offset: Offset(0, 3), // Adds a shadow effect
//             ),
//           ],
//         ),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(40), // Apply border radius to the image
//           child: Stack(
//             children: [
//               // Background image
//               Image.asset(
//                 imagePaths[index],
//                 fit: BoxFit.cover,
//                 height: MediaQuery.of(context).size.height * 0.15,
//                 width: double.infinity, // Takes full width of the parent
//               ),
//               // Semi-transparent overlay
//               Container(
//                 height: MediaQuery.of(context).size.height * 0.15,
//                 width: double.infinity,
//                 color: Colors.black.withOpacity(0.5), // Adjust opacity here
//               ),
//               // Centered Text
//               Positioned(
//                 top: 0,
//                 left: 0,
//                 right: 0,
//                 bottom: 0,
//                 child: Center(
//                   child: Text(
//                     names[index], // Custom name for each image
//                     style: TextStyle(
//                       color: const Color.fromARGB(255, 183, 183, 183),
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   ),
// ),



              SizedBox(height: screenheight * 0.03),


                 
    
        ],
      ),
    ),
  ),
);
  }
}