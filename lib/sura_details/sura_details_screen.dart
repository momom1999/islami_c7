import 'package:flutter/material.dart';
import 'package:islami_c7/sura_details/sura_details_args.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'sura-details';

  @override
  Widget build(BuildContext context) {
    SuraDetailsScreenArgs arg =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailsScreenArgs;
    //print(arg.name);
    //print(arg.index)
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/main_background.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(arg.name),
          ),
        ));
  }
}
