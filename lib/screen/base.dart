import 'package:flutter/material.dart';
import 'package:personal_portofolio/screen/about.dart';
import 'package:personal_portofolio/screen/notes.dart';
import 'package:personal_portofolio/screen/projects.dart';
import 'package:personal_portofolio/utils/constants.dart';
import 'package:personal_portofolio/widgets/custom_nav_bar.dart';

import 'home.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<StatefulWidget> createState() => BaseState();

}

class BaseState extends State<Base> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  static final List<Widget> _navScreen = <Widget> [
    const Home(),
    const About(),
    const Projects(),
    const Notes()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlack,
      body: Stack(
        children: [
          Center(
            child: _navScreen.elementAt(_selectedIndex),
          ),
          Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.center,
                child: CustomNavBar(
                  menuList: [
                    'Home',
                    'About Me',
                    'Projects',
                    'Notes'
                  ],
                ),
              )
          )
        ],
      ),
    );
  }

}