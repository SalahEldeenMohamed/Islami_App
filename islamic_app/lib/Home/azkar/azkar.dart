import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/l10n/app_localizations.dart';

import '../../app_colors.dart';
import 'item_azkar_name.dart';

class AzkarTab extends StatefulWidget {
  @override
  State<AzkarTab> createState() => _AzkarTabState();
}

class _AzkarTabState extends State<AzkarTab> {
  List<Azkar> elazkarList = [];

  @override
  Widget build(BuildContext context) {
    if (elazkarList.isEmpty) {
      loadAzkarFile();
    }
    return Column(
      children: [
        Expanded(child: Image.asset('assets/images/OnboardingScreen.png')),
        Divider(
          color: AppColors.primaryLightColor,
          thickness: 3,
        ),
        Text(AppLocalizations.of(context)!.azkar_name,
          style: Theme
              .of(context)
              .textTheme
              .bodyMedium,
        ),
        Divider(
          color: AppColors.primaryLightColor,
          thickness: 3,
        ),
        Expanded(
          flex: 2,
          child: elazkarList.isEmpty ?
          Center(child: CircularProgressIndicator(
            color: AppColors.primaryLightColor,
          ),
          )
              :
          ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                color: AppColors.primaryLightColor,
                thickness: 1,
              );
            },
            itemBuilder: (context, index) {
              return ItemAzkarName(zakr: elazkarList[index]);
            },
            itemCount: elazkarList.length,
          ),
        )
      ],
    );
  }

  void loadAzkarFile() async {
    String azkarContent = await rootBundle.loadString('assets/files/azkar.txt');
    List<String> azkarList = azkarContent.split('#\r\n');
    for (int i = 0; i < azkarContent.length; i++) {
      /// print(azkarList[i]);
      List<String>azkarLines = azkarList[i].split('\n');
      String title = azkarLines[0];
      azkarLines.removeAt(0);
      Azkar zakr = Azkar(title: title, content: azkarLines);
      elazkarList.add(zakr);
      setState(() {

      });
    }
  }
}

/// Data Class
class Azkar {
  String title;
  List<String> content;

  Azkar({required this.title, required this.content});
}