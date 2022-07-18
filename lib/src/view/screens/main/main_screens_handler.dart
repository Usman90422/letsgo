import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:letsgo/constants/constant.dart';
import 'package:letsgo/src/view/screens/main/account_screen.dart';
import 'package:letsgo/src/view/screens/main/explore_screen.dart';
import 'package:letsgo/src/view/screens/main/notifications_screen.dart';
import 'package:letsgo/src/view/screens/main/saved_screen.dart';
import 'package:letsgo/src/view/screens/main/trips_screen.dart';

class MainScreensHandler extends StatefulWidget {
  const MainScreensHandler({Key? key}) : super(key: key);

  @override
  _MainScreensHandlerState createState() => _MainScreensHandlerState();
}

class _MainScreensHandlerState extends State<MainScreensHandler> {


  final List<Widget> _screens =
  [
    const ExploreScreen(),const TripsScreen(),const NotificationsScreen(),const SavedScreen(),const AccountScreen(),
  ];

  int _pageIndex = 0;
  final PageController _pageController = PageController(initialPage:0);
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey = GlobalKey();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
          key: _scaffoldKey,
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: kColor,
            unselectedItemColor:Colors.black54,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _pageIndex,
            backgroundColor: Colors.white,
            elevation: 10.0,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
            items: [
              barItem(CupertinoIcons.search,"Explore", 0),
              barItem(CupertinoIcons.square_list_fill,"Trips", 1),
              barItem(CupertinoIcons.heart_fill,"Saved", 2),
              barItem(Icons.notifications,"Notifications", 3),
              barItem(Icons.person,"Account", 4),
            ],
            onTap: (int index) {
              _setPage(index);
            },
          ),
          body: PageView.builder(
            controller: _pageController,
            itemCount: _screens.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return _screens[index];
            },
          ),

        );
  }

  BottomNavigationBarItem barItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Icon(icon, color: index == _pageIndex ? kColor : Colors.grey, size: index == _pageIndex ? 30: 20),
      label: label,
    );
  }
  void _setPage(int pageIndex) {
    setState(() {
      _pageController.jumpToPage(pageIndex);
      _pageIndex = pageIndex;
    });
  }

}

