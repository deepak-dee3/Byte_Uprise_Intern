import 'package:flutter/material.dart';



class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 243, 243),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: ListView(
        children: [

          SizedBox(height:screenheight*0.03 ,),
          // Center(child: CircleAvatar(
          //   child: CircleAvatar(
          //     radius: 60,
          //     child: Icon(Icons.person,size: 70,),
          //     backgroundColor: const Color.fromARGB(255, 187, 221, 249),
          //   ),
          //   radius: 75,
          //   backgroundColor: Colors.purple.withOpacity(0.5)),),
          Center(
  child: Stack(
    alignment: Alignment.center,
    children: [
      CircleAvatar(
        radius: 75,
        backgroundColor: Colors.purple.withOpacity(0.5),
        child: CircleAvatar(
          radius: 60,
          backgroundColor: const Color.fromARGB(255, 187, 221, 249),
          child: Icon(
            Icons.person,
            size: 70,
          ),
        ),
      ),
      Positioned(
        bottom: 10, // Adjust the distance from the bottom of the outer circle
        right: 0,
        child: GestureDetector(
          onTap: () {
            // Add camera click action here
          },
          child: CircleAvatar(
            radius: 20, // Camera icon size
            backgroundColor: Colors.white,
            child: Icon(
              Icons.camera_alt_outlined,
              size: 20,
              color: Colors.grey,
             
            ),
          ),
        ),
      ),
    ],
  ),
)
,
          SizedBox(height:screenheight*0.03 ,),
          _buildProfileOption(Icons.person, "My Account"),
          _buildProfileOption(Icons.notifications, "Notifications"),
          _buildProfileOption(Icons.download, "Downloads"),
          _buildProfileOption(Icons.settings, "Settings"),
          _buildProfileOption(Icons.group_add, "Invite Friend"),
          _buildProfileOption(Icons.help_outline, "Help Center"),
          _buildProfileOption(Icons.feedback, "Feedback"),
          _buildProfileOption(Icons.logout, "Log Out"),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 3,
      //   selectedItemColor: Colors.purple,
      //   unselectedItemColor: Colors.grey,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.book),
      //       label: 'Courses',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: 'Explore',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }

  Widget _buildProfileOption(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.purple,
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
