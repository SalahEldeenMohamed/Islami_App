import 'package:flutter/material.dart';
import 'package:islamic_app/Home/azkar/azkar.dart';
import 'package:islamic_app/Home/do3aa/do3aa.dart';
import 'package:islamic_app/Home/quran/quran.dart';
import 'package:islamic_app/Home/salh/salh.dart';

class HomeScreen extends StatefulWidget {

  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Islami',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyLarge,),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Theme
                    .of(context)
                    .primaryColor
            ),
            child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {

                  });
                },
                items: [
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/quran.png')),
                    label: 'Quran',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/azkar.png')),
                    label: 'azkar',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/salh.png')),
                    label: 'salh',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/do3aa.png')),
                    label: 'do3aa',
                  ),
                ]
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }
}

List<Widget> tabs = [
  QuranTab(), AzkarTab(), SalhTab(), Do3aaTab()
];