import 'package:flutter/material.dart';
import 'package:islamic_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

import 'Home/azkar/azkar_details_screen.dart';
import 'Home/home_screen.dart';
import 'Home/quran/sura_details_screen.dart';
import 'l10n/app_localizations.dart';
import 'my_theme_data.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(),
      child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        AzkarDetailsScreen.routeName: (context) => AzkarDetailsScreen(),
      },
      theme: MyThemeData.lightMode,
      title: 'Localizations Sample App',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
      themeMode: provider.appTheme,
      darkTheme: MyThemeData.darkMode,
    );
  }
}
