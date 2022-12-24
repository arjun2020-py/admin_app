import 'package:admin/HomeScreen/home_screen.dart';
import 'package:admin/drwer_screen/drwer_screen.dart';
import 'package:admin/feed_back/view/feed_back.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int _selectedIndex = 0;

  final List<Widget> _options = [
    const HomeScreen(),
    const Center(
      child: Text('Comapnies'),
    ),
    const Center(child: Text('Regs usres')),
    const FeedBackScreen()
  ];

  void _onItemPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _selectedIndex != 3
        ? Scaffold(
            drawer: const DrawerScreen(),
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(70),
              child: AppBar(
                title: const Center(
                  child: Text(
                    'Admin Panel',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search))
                ],
                backgroundColor: const Color(0xff4B56D2),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                  ),
                ),
              ),
            ),
            body: _options[_selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.business_sharp),
                  label: 'Regd company',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.graduationCap,
                  ),
                  label: 'Regd users',
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.comment),
                  label: 'Feedback',
                )
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.black,
              iconSize: 20,
              onTap: _onItemPressed,
              elevation: 5,
            ),
          )
        : Scaffold(
            body: _options[_selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.business_sharp),
                  label: 'Regd company',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.graduationCap,
                  ),
                  label: 'Regd users',
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.comment),
                  label: 'Feedback',
                )
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.black,
              iconSize: 20,
              onTap: _onItemPressed,
              elevation: 5,
            ),
          );
  }
}
