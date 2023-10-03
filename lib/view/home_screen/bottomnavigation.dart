import 'package:flutter/material.dart';
import 'package:flutter_lumi10/view/coming_soon_screen/coming_soon.dart';

import '../download_screen/download_screen.dart';
import '../menu_screen/menu_screen.dart';
import '../search_screen/search_screen.dart';
import 'home_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  
   int selection = 0;
   void tap(int index) {
  setState(() {
    selection = index;

   
    // Use a switch statement to navigate to different screens based on the selected tab.
    
  });
}
final screens=[HomePage(), SearchScreen(),ComingSoon(),DownloadScreen(),MenuScreen()];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[selection],
      bottomNavigationBar: BottomNavigationBar(

                      currentIndex: selection,
        onTap: (value) => tap(value),
      backgroundColor: Colors.grey[900],
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      
      
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
      BottomNavigationBarItem(icon: Icon(Icons.video_library),label: "Coming Soon"),
      BottomNavigationBarItem(icon: Icon(Icons.download),label: "Downloads"),
      BottomNavigationBarItem(icon: Icon(Icons.menu),label: "More"),

    ]),
    );
  }
}