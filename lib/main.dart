import 'dart:async';
import 'package:byte_uprise/PAGES/courses.dart';
import 'package:byte_uprise/PAGES/explore.dart';
import 'package:byte_uprise/PAGES/profile.dart';
import 'package:flutter/material.dart';
import 'PAGES/home.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;

  // Pages for each tab
  final List<Widget> _pages = [
    MainPage(), // Home
    Courses(),
   ExplorePage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Display the current page
     
      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; 
          });
        },
  items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.black, size: 25),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.menu_book_outlined, color: Colors.black, size: 25),
      label: 'Courses',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search_outlined, color: Colors.black, size: 25),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle, color: Colors.black, size: 25),
      label: 'Profile',
     
    ),
  ],
  showSelectedLabels: true, 
  showUnselectedLabels: true,
   selectedItemColor: Colors.purple, 
  unselectedItemColor: Colors.grey, 
  selectedLabelStyle: TextStyle(fontSize: 14, color: Colors.purple), 
  unselectedLabelStyle: TextStyle(fontSize: 12, color: Colors.grey),
),

    );
  }
}




// class MainPage extends StatefulWidget {
//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   late ScrollController _scrollController;
//   late ScrollController _scrollController2;
//     int _currentIndex2 = 0;
  
//   late Timer _timer;
//   late Timer _timer2;
  
//   int _currentIndex = 0;


//   @override
//   void initState() {
//     super.initState();
//     _scrollController = ScrollController();
//     _scrollController2 = ScrollController();
 
//     // Listen to scroll position changes
//     _scrollController.addListener(() {
//       // Calculate which index is currently visible based on scroll offset
//       int newIndex = (_scrollController.offset / (MediaQuery.of(context).size.width * 0.7)).round();
//       if (newIndex != _currentIndex) {
//         setState(() {
//           _currentIndex = newIndex; // Update the current index based on scroll position
//         });
//       }
//     });

//     // Timer to scroll automatically every 5 seconds
//     _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
//       if (_currentIndex < 4) {
//         _currentIndex++;
//       } else {
//         _currentIndex = 0; // Reset to the first item when reaching the end
//       }
//       _scrollController.animateTo(
//         _currentIndex * MediaQuery.of(context).size.width * 0.7, // Scroll by item width
//         duration: Duration(milliseconds: 500),
//         curve: Curves.easeInOut,
//       );
//     });


//      _scrollController2.addListener(() {
//       int newIndex = (_scrollController2.offset /
//               (MediaQuery.of(context).size.width * 0.7))
//           .round();
//       if (newIndex != _currentIndex2) {
//         setState(() {
//           _currentIndex2 = newIndex;
//         });
//       }
//     });

//     _timer2 = Timer.periodic(Duration(seconds: 5), (Timer timer) {
//       setState(() {
//         if (_currentIndex2 < 4) {
//           _currentIndex2++;
//         } else {
//           _currentIndex2 = 0;
//         }
//         _scrollController2.animateTo(
//           _currentIndex2 * MediaQuery.of(context).size.width * 0.7,
//           duration: Duration(milliseconds: 500),
//           curve: Curves.easeInOut,
//         );
//       });
//     });



//   }

  


  


  

//   @override
//   void dispose() {
//     _scrollController.dispose();
//      _scrollController2.dispose();

//     _timer.cancel();
//     _timer2.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var screenheight = MediaQuery.of(context).size.height;
//     var screenwidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 244, 243, 243),
//       body: SingleChildScrollView(scrollDirection: Axis.vertical,
//         child: Container(
//           child: Column(
//             children: [
//               SizedBox(height: screenheight * 0.04),
//               Container(
//                 height: screenheight * 0.15,
//                 width: double.infinity,
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 20, right: 25),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(top: 40),
//                         child: Column(
//                           children: [
//                             Text(
//                               'Welcome To',
//                               style: TextStyle(fontSize: 16),
//                             ),
//                             ShaderMask(
//                               shaderCallback: (bounds) => LinearGradient(
//                                 colors: [Colors.purple, Colors.blue],
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                               ).createShader(bounds),
//                               child: Text(
//                                 '  ByteUprise',
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(top: 20),
//                         child: CircleAvatar(
//                           radius: 25,
//                           backgroundColor: const Color.fromARGB(255, 159, 195, 245),
//                           child: ShaderMask(
//                             shaderCallback: (bounds) => LinearGradient(
//                               colors: [Colors.blue, Colors.purple],
//                               begin: Alignment.topLeft,
//                               end: Alignment.bottomRight,
//                             ).createShader(bounds),
//                             child: Icon(
//                               Icons.person,
//                               size: 30,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 30, right: 60),
//                 child: Container(
//                   height: screenheight * 0.06,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: const Color.fromARGB(255, 233, 232, 232),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsets.only(left: 15, right: 15),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Search for course',
//                           style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
//                         ),
//                         Icon(
//                           Icons.search,
//                           color: Colors.purple,
//                           size: 26,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: screenheight * 0.03),
//               Padding(
//                 padding: EdgeInsets.all(10),
//                 child: Container(
                  
//                   height: screenheight * 0.18,
//                   margin: EdgeInsets.symmetric(horizontal: 10),
//                   child: ListView.builder(
//                     controller: _scrollController,
//                     scrollDirection: Axis.horizontal,
//                     itemCount: 5,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: EdgeInsets.only(right: 16),
//                         child: Container(
//                           width: screenwidth * 0.7,
//                           decoration: BoxDecoration(
        
//                             gradient: LinearGradient(
//                               colors: [Colors.blueAccent, Colors.purple],
//                               begin: Alignment.topLeft,
//                               end: Alignment.bottomRight,
//                             ),
//                             borderRadius: BorderRadius.circular(20),
                            
//                           ),
//                           child: Center(
//                             child: Text(
//                               'Item $index',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//               // Dots Indicator
//               Padding(
//                 padding: const EdgeInsets.only(top: 16.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: List.generate(5, (index) {
//                     return AnimatedContainer(
//                       duration: Duration(milliseconds: 300),
//                       margin: EdgeInsets.symmetric(horizontal: 4),
//                       height: 8,
//                       width: 8,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: _currentIndex == index
//                             ? Colors.purple
//                             : Colors.grey,
//                       ),
//                     );
//                   }),
//                 ),
//               ),
        
//               SizedBox(height: screenheight*0.03,),
        
//               Padding(padding: EdgeInsets.only(left: 20),
//                 child: Align(alignment: Alignment.centerLeft,
//                   child: Text('Courses',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
//               ),
//                SizedBox(height: screenheight*0.03,),
        
//         Padding(padding: EdgeInsets.only(left: 20),
//           child: Container(
//                   height: screenheight * 0.33,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       Container(
//                         width: screenwidth * 0.65,
//                         //margin: EdgeInsets.on(horizontal: 20),
//                         decoration: BoxDecoration(
//                           color: Colors.blue,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'Course 1',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: screenwidth * 0.6,
//                         margin: EdgeInsets.symmetric(horizontal: 8),
//                         decoration: BoxDecoration(
//                           color: Colors.red,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'Course 2',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: screenwidth * 0.6,
//                         margin: EdgeInsets.symmetric(horizontal: 8),
//                         decoration: BoxDecoration(
//                           color: Colors.green,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'Course 3',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//         ),
//          SizedBox(height: screenheight*0.03,),
//                       Padding(padding: EdgeInsets.only(left: 20),
//                 child: Align(alignment: Alignment.centerLeft,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text('Internship',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
//                        Padding(padding: EdgeInsets.only(right: 10),
//                         child: Icon(Icons.arrow_circle_right_outlined,size: 30,color: Colors.grey))
//                      // Text('more   ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 55, 61, 236)),)
//                     ],
//                   )),
//               ),
//                SizedBox(height: screenheight*0.03,),
        
//         Padding(padding: EdgeInsets.only(left: 20),
//           child: Container(
//                   height: screenheight * 0.22,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       Container(
//                         width: screenwidth * 0.40,
//                         //margin: EdgeInsets.on(horizontal: 20),
//                         decoration: BoxDecoration(
//                           color: const Color.fromARGB(255, 228, 68, 156).withOpacity(0.8),
//                           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(70)),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'Course 1',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: screenwidth * 0.40,
//                         margin: EdgeInsets.symmetric(horizontal: 25),
//                         decoration: BoxDecoration(
//                           color: Colors.blue.withOpacity(0.5),
//                           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(70)),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'Course 2',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: screenwidth * 0.40,
//                         margin: EdgeInsets.symmetric(horizontal: 8),
//                         decoration: BoxDecoration(
//                           color: Colors.orange.withOpacity(0.5),
//                           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(70)),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'Course 3',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//         ),

//          SizedBox(height: screenheight*0.03,),
//                       Padding(padding: EdgeInsets.only(left: 20),
//                 child: Align(alignment: Alignment.centerLeft,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text('Achievements',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
//                       Padding(padding: EdgeInsets.only(right: 10),
//                         child: Icon(Icons.arrow_circle_right_outlined,size: 30,color: Colors.grey))
//                      // Text('details   ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 55, 61, 236)),)
//                     ],
//                   )),
//               ),

//               SizedBox(height: screenheight*0.02,),

//               Padding(padding: EdgeInsets.all(25),
//               child: Container(
                
                
//                 height: screenheight*0.45,
//                 width: double.infinity,
//                 decoration: BoxDecoration(color: Colors.white,
//                 boxShadow: [
//       BoxShadow(
//         color: Colors.black.withOpacity(0.3), 
//         spreadRadius: 2, 
//         blurRadius: 8,
//         offset: Offset(0, 4), 
//       ),
//     ],

                
//                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(100)),

                

//                 ),
//                 child: Column(
//                   children: [
                
//                     Padding(padding: EdgeInsets.only(left: 30,top: 40),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Padding(padding: EdgeInsets.only(top: 20),
//                                 child: Column(
//                                   children: [
//                                     Text('Active Users    ',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
//                                      Text('1000 +',style: TextStyle(fontWeight: FontWeight.bold),),
//                                      SizedBox(height: screenheight*0.05,),
//                                       Text('Client Reviews ',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
//                                        Text('2000 +',style: TextStyle(fontWeight: FontWeight.bold),)
//                                   ],
//                                 ),
//                               ),
//                               Padding(padding: EdgeInsets.only(left: 35,top: 20),
//                                 child: CircleAvatar(
//                                   radius: 70,backgroundColor:Colors.amber,
//                                   child: CircleAvatar(radius: 60,backgroundColor: Colors.white,
//                                     child: Padding(padding: EdgeInsets.only(top:35),
//                                       child: Column(
//                                         children: [
//                                           Text('1234',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
//                                           Text('Active Projects',style: TextStyle(fontSize: 13,color: Colors.grey,),)
//                                         ],
//                                       ),
//                                     )),
//                                 ),
//                               )
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
                
//                     Padding(padding: EdgeInsets.only(left: 5,top: 60),
//                       child: Column(children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 Text('Internship',style: TextStyle(fontWeight: FontWeight.bold),),
//                                 SizedBox(height: screenheight*0.01,),
//                                 Container(height: screenheight*0.01,
//                                width: screenwidth*0.2,
//                                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.amber.withOpacity(0.4)),
                               
//                                ),
//                                SizedBox(height: screenheight*0.01,),
//                                 Text('100 +',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
//                               ],
//                             ),
                         
//                                                 Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text('Courses',style: TextStyle(fontWeight: FontWeight.bold),),
//                             SizedBox(height: screenheight*0.01,),
//                             Container(height: screenheight*0.01,
//                            width: screenwidth*0.15,
//                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
//                               color: Colors.blue.withOpacity(0.4)),
                           
//                            ),
//                            SizedBox(height: screenheight*0.01,),
//                             Text('40 +',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
//                           ],
//                         ),
//                                                 Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text('Projects',style: TextStyle(fontWeight: FontWeight.bold),),
//                             SizedBox(height: screenheight*0.01,),
//                             Container(height: screenheight*0.01,
//                            width: screenwidth*0.1,
//                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.red.withOpacity(0.4)),
                            
//                            ),
//                            SizedBox(height: screenheight*0.01,),
//                             Text('20 +',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
//                           ],
//                         ),
//                          ],
//                         ),
//                       ],),
//                     )
//                   ],
                
//                 ),
//               ),),
//                SizedBox(height: screenheight*0.02,),

//                Padding(padding: EdgeInsets.only(left: 15,right: 15),
//                child: Container(
//                 height: screenheight*0.09,
//                 width: double.infinity,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
//                   color: const Color.fromARGB(255, 181, 112, 240).withOpacity(0.5)),
//                 child: Row(
//                   children: [
//                     SizedBox(width: screenwidth*0.05,),
//                     Icon(Icons.lightbulb_rounded,color: Colors.amber,),
//                     Text('  Start you journey with ByteUprise',style: TextStyle(fontWeight: FontWeight.bold),),
//                   ],
//                 ),
//                ),),
//                 SizedBox(height: screenheight*0.05,),

//               Padding(
//                 padding: const EdgeInsets.only(left: 15,right: 15),
//                 child: Row(
                 
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       height: screenheight*0.2,
//                       width: screenwidth*0.40,
//                       decoration: BoxDecoration( boxShadow: [
//       BoxShadow(
//         color: Colors.black.withOpacity(0.3), 
//         spreadRadius: 2, 
//         blurRadius: 8,
//         offset: Offset(0, 4), 
//       ),
//     ],
//                         borderRadius: BorderRadius.circular(10),color: Colors.white,),
//                       child: Center(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(Icons.notes,size: 35,color: Colors.red,),
//                               SizedBox(height: screenheight*0.02,),
//                             Text('Courses',style: TextStyle(fontWeight: FontWeight.bold),),
//                           ],
//                         ),
//                       ),
//                     ),
                   
//                      Container(
//                       height: screenheight*0.2,
//                       width: screenwidth*0.40,
//                       decoration: BoxDecoration(
//                          boxShadow: [
//       BoxShadow(
//         color: Colors.black.withOpacity(0.3), 
//         spreadRadius: 2, 
//         blurRadius: 8,
//         offset: Offset(0, 4), 
//       ),
//     ],
//                         borderRadius: BorderRadius.circular(10),color: Colors.white,),
//                        child: Center(
//                          child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(Icons.library_add,size: 35,color: Colors.blue,),
//                             SizedBox(height: screenheight*0.02,),
//                             Text('Internship',style: TextStyle(fontWeight: FontWeight.bold),),
//                           ],
//                                                ),
//                        ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: screenheight*0.03,),
//                       Padding(padding: EdgeInsets.only(left: 20),
//                 child: Align(alignment: Alignment.centerLeft,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text('Recent Projects',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
//                       Padding(padding: EdgeInsets.only(right: 10),
//                         child: Icon(Icons.arrow_circle_right_outlined,size: 30,color: Colors.grey))
//                      // Text('details   ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 55, 61, 236)),)
//                     ],
//                   )),
//               ),
//               SizedBox(height: screenheight*0.03,),
//                       Padding(padding: EdgeInsets.only(left: 20),
//           child: Container(
//                   height: screenheight * 0.22,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       Container(
//                         width: screenwidth * 0.40,
//                         //margin: EdgeInsets.on(horizontal: 20),
//                         decoration: BoxDecoration(
//                           color: const Color.fromARGB(255, 228, 68, 156).withOpacity(0.8),
//                           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(10)),
//                         ),
//                         child:Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(top: 20),
//                               child: Container(
//                                 height: screenheight*0.15,
//                                 width: screenwidth*0.33,
//                                decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(10)),
//                               ),
//                             ),
//                             SizedBox(height: screenheight*0.01,),
//                             Text(
//                               'Cyber Security',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         width: screenwidth * 0.40,
//                         margin: EdgeInsets.symmetric(horizontal: 25),
//                         decoration: BoxDecoration(
//                           color: Colors.blue.withOpacity(0.5),
//                           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(10)),
//                         ),
//                         child:Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(top: 20),
//                               child: Container(
//                                 height: screenheight*0.15,
//                                 width: screenwidth*0.33,
//                                decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(10)),
//                               ),
//                             ),
//                             SizedBox(height: screenheight*0.01,),
//                             Text(
//                               'Data Science',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         width: screenwidth * 0.40,
//                         margin: EdgeInsets.symmetric(horizontal: 8),
//                         decoration: BoxDecoration(
//                           color: Colors.orange.withOpacity(0.5),
//                           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(10)),
//                         ),
//                         child: Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(top: 20),
//                               child: Container(
//                                 height: screenheight*0.15,
//                                 width: screenwidth*0.33,
//                                decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(10)),
//                               ),
//                             ),
//                             SizedBox(height: screenheight*0.01,),
//                             Text(
//                               'Machine Learning',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//         ),

//          SizedBox(height: screenheight*0.05,),

         
//                        Padding(
//                 padding: const EdgeInsets.only(left: 15,right: 15),
//                 child: Row(
                 
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       height: screenheight*0.15,
//                       width: screenwidth*0.28,
//                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
//                       child: Center(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(Icons.golf_course,size: 35,color: Colors.red,),
//                               SizedBox(height: screenheight*0.02,),
//                             Text('Top Courses',style: TextStyle(fontWeight: FontWeight.bold),),
//                           ],
//                         ),
//                       ),
//                     ),
                   
//                      Container(
//                       height: screenheight*0.15,
//                       width: screenwidth*0.28,
//                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
//                        child: Center(
//                          child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(Icons.domain,size: 35,color: Colors.green,),
//                             SizedBox(height: screenheight*0.02,),
//                             Text('Domain',style: TextStyle(fontWeight: FontWeight.bold),),
//                           ],
//                                                ),
//                        ),
//                     ),

//                     Container(
//                       height: screenheight*0.15,
//                       width: screenwidth*0.28,
//                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
//                        child: Center(
//                          child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(Icons.reviews,size: 35,color: Colors.amber,),
//                             SizedBox(height: screenheight*0.02,),
//                             Text('Reviews',style: TextStyle(fontWeight: FontWeight.bold),),
//                           ],
//                                                ),
//                        ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: screenheight*0.03,),
//               Center(child: Text('Ratings',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),)),
//               SizedBox(height: screenheight*0.03,),


//             Container(
//               height: screenheight * 0.18,
//               margin: EdgeInsets.symmetric(horizontal: 10),
//               child: ListView.builder(
//                 controller: _scrollController2,
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 5,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: EdgeInsets.only(right: 16),
//                     child: Container(
//                       width: screenwidth * 0.7,
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                           colors: [Colors.orange, Colors.redAccent],
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                         ),
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'Second Item $index',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: screenheight*0.03,)
 

        
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
