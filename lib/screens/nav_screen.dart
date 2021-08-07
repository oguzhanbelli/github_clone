import 'package:flutter/material.dart';
import 'package:github_clone/widgets/widgets.dart';

import 'home_screen.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final List<String> _texts = const [
    "Home",
    "Services",
    "Skills",
    "Experience",
    "Contact",
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
        length: _texts.length,
        child: Scaffold(
          appBar: Responsive.isDesktop(context)
              ? PreferredSize(
                  preferredSize: Size(screenSize.width, 100.0),
                  child: CustomNavBar(
                    text: _texts,
                    selectedIndex: _selectedIndex,
                    onTap: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                  ),
                )
              : PreferredSize(
                  preferredSize: Size(screenSize.width, 70.0),
                  child:CustomAppBar(),
                ),
          body: IndexedStack(
            index: _selectedIndex,
            children: _screens,
          ),
        ));
  }
}
