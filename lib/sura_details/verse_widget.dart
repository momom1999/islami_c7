import 'package:flutter/material.dart';

class VersrWidget extends StatelessWidget {
  String content;
  int index;

  VersrWidget(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 8),
      alignment: Alignment.center,
      child: Text(
        '$content[$index]',
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
