import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HelpPage extends StatelessWidget {
  static const routeName = '/help_page';
  final String whatIsTangram = "TANGRAM";
  final String tangram =
      "Tangram is a creative intelligence game based on combining seven geometrically shaped pieces made of stone, plastic or wood to create various forms.";

  final String askPlay = "HOW CAN WE PLAY";
  final String play =
      "You can going next lv by drag and drop the pieces given for placement in appropriate places.\nThere are 9 levels, 3 easy, 3 medium and 3 hard.";
  final String havefun = "HAVE FUN";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('Help'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(children: [
          Text(
            whatIsTangram,
            style: TextStyle(fontSize: 30,color: Colors.blue),
          ),
          Text(
            tangram,
            style: TextStyle(fontSize: 20, color: Colors.blue[200]),
          ),
          Text(
            askPlay,
            style: TextStyle(fontSize: 30,color: Colors.purple),
          ),
          Text(
            play,
            style: TextStyle(fontSize: 20,color: Colors.purple[200]),
          ),
          Text(
            havefun,
            style: TextStyle(fontSize: 30,color: Colors.red),
          ),
        ]),
      ),
    );
  }
}
