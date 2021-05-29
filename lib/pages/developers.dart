

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DeveloperPage extends StatelessWidget {
  static const routeName = '/Developer';
  const DeveloperPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[400],
      appBar: AppBar(
        title: Text("Developers"),        
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Center(
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Mehmet Tekin ALTUN\nHumeyra ERTAŞ",
              style: TextStyle(fontSize: 50,color: Colors.red[900]),             
            ),
            InkWell(
                child: new Text("Open Browser", style: TextStyle(fontSize: 30,color: Colors.black87),),
                onTap: () async {
                  final url = 'https://github.com/mtaltn';
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceSafariVC: false,
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}
