import 'package:flutter/material.dart';

class ItemAzkarDetails extends StatelessWidget {
  String content;

  ItemAzkarDetails({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$content)',
      style: Theme.of(context).textTheme.titleLarge,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
    );
  }
}
