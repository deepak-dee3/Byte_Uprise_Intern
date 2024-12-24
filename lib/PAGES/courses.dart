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
                            backgroundColor: const Color.fromARGB(255, 159, 195, 245),
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
          
          Padding(padding: EdgeInsets.only(left: 20),
            child: Container(
                    height: screenheight * 0.22,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: screenwidth * 0.70,
                          //margin: EdgeInsets.on(horizontal: 20),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 228, 68, 156).withOpacity(0.8),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                          ),
                          child: Center(
                            child: Text(
                              'Course 1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: screenwidth * 0.70,
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.5),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                          ),
                          child: Center(
                            child: Text(
                              'Course 2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: screenwidth * 0.70,
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.5),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                          ),
                          child: Center(
                            child: Text(
                              'Course 3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
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
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Prevent scrolling here, as it's already inside SingleChildScrollView
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 items in each row
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 1.0, // Adjust the item size (aspect ratio)
                  ),
                  itemCount: 6, // 6 items
                  itemBuilder: (context, index) {
                    return Container(
                       height: screenheight * 0.25, 
                    
                      decoration: BoxDecoration(
                       // color: const Color.fromARGB(255, 237, 236, 236),
                       color: const Color.fromARGB(255, 228, 242, 252),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                             SizedBox(height: screenheight*0.01,),
                            Text('Design'),
                            SizedBox(height: screenheight*0.01,),
                            Container(
                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                              height: screenheight*0.15,
                              width: screenwidth*0.3,
                            )
                          ],
                        )
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: screenheight * 0.03),


                 
    
        ],
      ),
    ),
  ),
);
  }
}