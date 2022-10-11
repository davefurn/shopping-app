import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/screens/all_tabs/women_screens/women_choosing_screen.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  RootAppState createState() => RootAppState();
}

class RootAppState extends State<RootApp> {
  int activeTab = 0;
  // appbar
  late AppBar appbar;
  List itemsTab = [
    {"icon": Icons.home, "size": 28.0},
    {"icon": FontAwesomeIcons.locationDot, "size": 23.0},
    {"icon": FontAwesomeIcons.userLarge, "size": 22.0},
    {"icon": FontAwesomeIcons.bagShopping, "size": 23.0},
    {"icon": Icons.more_horiz, "size": 25.0},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: getFooter(),
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: const[
         WomenScreen(),
      ],
    );
  }

  PreferredSizeWidget? getAppBar() {
    switch (activeTab) {
      case 0:
        break;
      case 1:
        break;
      case 2:
        return AppBar(
          elevation: 0.8,
          backgroundColor: Colors.white,
          title: const Text(
            "ACCOUNT",
            style: TextStyle(color: Colors.black),
          ),
        );
      case 3:
        return AppBar(
          elevation: 0.8,
          backgroundColor: Colors.white,
          title: const Text(
            "CART",
            style: TextStyle(color: Colors.black),
          ),
        );
      case 4:
        return AppBar(
          elevation: 0.8,
          backgroundColor: Colors.white,
          title: const Text(
            "MORE",
            style:  TextStyle(color: Colors.black),
          ),
        );
      default:
    }
    return null;
  }

  Widget getFooter() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.2)))),
      child: Padding(
        padding: EdgeInsets.only(left:  MediaQuery.of(context).size.width * .010, right:  MediaQuery.of(context).size.width * .010, top:  MediaQuery.of(context).size.height * .005,),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(itemsTab.length, (index) {
              return IconButton(
                  icon: Center(
                    child: Icon(
                      itemsTab[index]['icon'],
                      size: itemsTab[index]['size'],
                      color:
                          activeTab == index ? const Color(0xFFEA9F5A) : Colors.black,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      activeTab = index;
                    });
                  });
            })),
      ),
    );
  }
}
