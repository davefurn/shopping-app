// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:shopping_app/screens/coffee_page.dart';
// import 'package:shopping_app/screens/home_page.dart';
// import 'package:shopping_app/screens/love_page.dart';

// class DesignScreen extends StatefulWidget {
//   const DesignScreen({Key? key}) : super(key: key);

//   @override
//   State<DesignScreen> createState() => _DesignScreenState();
// }

// class _DesignScreenState extends State<DesignScreen> {
 
//   int _selectedItemIndex = 0;
//   List pages = [
//     HomePage(),
//     CoffeePage(),
//     LovePage(),
//   ];
//   void onTap(int index) {
//     setState(() {
//       _selectedItemIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff161819),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         onTap: onTap,
//         iconSize: 50,
//         elevation: 0,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         backgroundColor: const Color(0xff161819),
//         currentIndex: _selectedItemIndex,
//         selectedItemColor: const Color(0xffc7c8c9).withOpacity(0.5),
//         items: [
//           BottomNavigationBarItem(
//             activeIcon: SvgPicture.asset(
//               "assets/svgs/home.svg",
//               height: 25,
//               color: const Color(0xffc7c8c9).withOpacity(0.5),
//               alignment: Alignment.topCenter,
//             ),
//             icon: SvgPicture.asset(
//               "assets/svgs/home.svg",
//               height: 25,
//               color: const Color(0xffc7c8c9),
//               alignment: Alignment.topCenter,
//             ),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             activeIcon: SvgPicture.asset(
//               "assets/svgs/icons8-takeaway-hot-drink-64.svg",
//               height: 25,
//               color: Colors.green.withOpacity(0.5),
//               alignment: Alignment.topCenter,
//             ),
//             icon: SvgPicture.asset(
//               "assets/svgs/icons8-takeaway-hot-drink-64.svg",
//               height: 25,
//               color: const Color(0xffc7c8c9),
//             ),
//             label: "Coffee",
//           ),
//           BottomNavigationBarItem(
//             activeIcon: SvgPicture.asset(
//               "assets/svgs/icons8-love-100 (1).svg",
//               height: 25,
//               color: Colors.red.withOpacity(0.5),
//               alignment: Alignment.topCenter,
//             ),
//             icon: SvgPicture.asset(
//               "assets/svgs/icons8-love-100.svg",
//               height: 25,
//               color: const Color(0xffc7c8c9),
//             ),
//             label: "shop",
//           ),
//         ],
//       ),
//       body: pages[_selectedItemIndex],
//     );
//   }
// }
