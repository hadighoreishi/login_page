import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/pages/profile_page.dart';
import 'home_page.dart';
import 'components/tool_bar.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myIndex == 2 ? const ToolBar() :  AppBar(title: Text('Main Page')),
      body: pages[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 20,
              height: 20,
              child: SvgPicture.asset('assets/svg/svg.svg'),
            ),
            label: 'Box',
          ),
        ],
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed, // fix buttom position
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.yellow[300],
      ),
    );
  }
}

final pages = [
  Center(
    child: Text('home'),
  ),
  Center(
    child: Text('Favorite'),
  ),
  Center(
    child: ProfilePage(),
  ),
  Center(
    child: HomePage(),
  ),
];
