import 'package:flutter/material.dart';
import 'package:islamic_app/Home/azkar/azkar.dart';

import 'item_azkar_details.dart';

class AzkarDetailsScreen extends StatefulWidget {
  static const String routeName = 'azkar_details_screen';

  @override
  State<AzkarDetailsScreen> createState() => _AzkarDetailsScreen();
}

class _AzkarDetailsScreen extends State<AzkarDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Azkar;
    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Islami', style: Theme.of(context).textTheme.bodyLarge),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.04,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ItemAzkarDetails(content: args.content[index]);
                  },
                  itemCount: args.content.length,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
