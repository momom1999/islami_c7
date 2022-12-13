import 'package:flutter/material.dart';
import 'package:islami_c7/home/hadeth/hadeth_tab.dart';
import 'package:islami_c7/home/quran/quran_tab.dart';
import 'package:islami_c7/home/radio/radio_tab.dart';
import 'package:islami_c7/home/sebha/sebha_tab.dart';

class HomeSreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Islami',
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (newlySelectedIndex) {
            setState(() {
              selectedIndex = newlySelectedIndex;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage('assets/images/ic_quran.png')),
                label: 'Quran'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon:
                    const ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                label: 'Sebha'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage('assets/images/ic_radio.png')),
                label: 'Radio'),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab()];
}
