import 'package:flutter/material.dart';

import 'azkar.dart';
import 'azkar_details_screen.dart';

class ItemAzkarName extends StatelessWidget {
  Azkar zakr;

  ItemAzkarName({super.key, required this.zakr});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).pushNamed(AzkarDetailsScreen.routeName, arguments: zakr);
      },
      child: Text(
        zakr.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
