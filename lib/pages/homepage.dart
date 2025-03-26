import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:oasis2/pages/home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  late final List<Widget> page;
  @override
  void initState() {
    page = [
      MainHomeScreem(),
      navBarPage(Iconsax.home5),
      navBarPage(Iconsax.personalcard2),
      navBarPage(Iconsax.heart1),
    ];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          iconSize: 28,
          currentIndex: selectedIndex,
          selectedItemColor: Color(0xFF006ED4),
          unselectedItemColor: Color(0xFF3EC7DF),
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  selectedIndex == 0 ? Iconsax.home5 : Iconsax.home5,
                ),
                label: 'Hospital'),
            BottomNavigationBarItem(
                icon: Icon(
                  selectedIndex == 1
                      ? Iconsax.personalcard5
                      : Iconsax.personalcard5,
                ),
                label: 'Clinician'),
            BottomNavigationBarItem(
                icon: Icon(
                  selectedIndex == 2 ? Iconsax.setting_21 : Iconsax.setting_21,
                ),
                label: 'Settings'),
          ]),
      body: page[selectedIndex],
    );
  }

  navBarPage(iconName) {
    return Center(
      child: Icon(
        iconName,
        size: 100,
        color: Colors.purple,
      ),
    );
  }
}
