
import 'package:flutter/material.dart';
import 'package:mta_tangram_project/model/level_model.dart';

import 'level_page.dart';

class LevelHomePage extends StatelessWidget {
  static const routeName = '/level_home_page';
  LevelHomePage({Key key}) : super(key: key);
  final String appBarText = "Level " + (LevelModel.currentLevel + 1).toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      
      appBar: AppBar(

        leading: BackButton(
          color: Colors.blue,
          onPressed: () {
            LevelModel.currentLevel = 0;
            Navigator.pop(context);
          },
        ),
        title: Text(appBarText),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: LevelPage(),
    );
  }
}
