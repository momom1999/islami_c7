import 'package:flutter/material.dart';
import 'package:islami_c7/home/home_screen.dart';
import 'package:islami_c7/my_theme.dart';
import 'package:islami_c7/sura_details/sura_details_screen.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      routes: {
        HomeSreen.routeName: (_) => HomeSreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
      },
      initialRoute: HomeSreen.routeName,
    );
  }
}
