import 'package:flutter/material.dart';
import 'package:islamic_app/Home/azkar/azkar.dart';
import 'package:islamic_app/Home/do3aa/do3aa.dart';
import 'package:islamic_app/Home/quran/quran.dart';
import 'package:islamic_app/Home/salh/salh.dart';
import 'package:islamic_app/Home/settings/settings.dart';
import 'package:islamic_app/l10n/app_localizations.dart';
import 'package:islamic_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {

  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        provider.appTheme == ThemeMode.light ?
        Image.asset('assets/images/background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ) :
        Image.asset('assets/images/darkbackground.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.app_title,
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
                    label: AppLocalizations.of(context)!.quran,
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/azkar.png')),
                    label: AppLocalizations.of(context)!.azkar,
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/salh.png')),
                    label: AppLocalizations.of(context)!.salh,
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/do3aa.png')),
                    label: AppLocalizations.of(context)!.do3aa,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings,
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
  QuranTab(), AzkarTab(), SalhTab(), Do3aaTab(), SettingsTab()
];