
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mta_tangram_project/model/level_model.dart';
import 'package:mta_tangram_project/widget/menu_item_widget.dart';

import 'developers.dart';
import 'help_page.dart';
import 'level_home_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home_page';

  HomePage() {
    LevelModel.currentLevel = 0;    
  }
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.blue[600] ,
        title: Text("Tangram Puzzle Game"),
        centerTitle: true,
               
        
      ),
      body:   Padding(
        padding: EdgeInsets.all(200),
        child: Center(          
          
          child: Column(
            
            
            mainAxisAlignment: MainAxisAlignment.center,           
            children: [            
               CircleAvatar(
                radius:50,
                backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Tangram_set_00.jpg/1024px-Tangram_set_00.jpg")
              ), 
              //  RaisedButton(
              //   onPressed: (){
              //     print("StartButton");
              //   },
              //   color: Colors.blue[900],
              //   child: Text("Start"),                
              // ),              
              MenuItemWidget(
                color: Colors.blue[900],
                name: "Start",
                routeName: LevelHomePage.routeName,
              ),
              MenuItemWidget(
                color: Colors.red[900],
                name: "Developer",
                routeName: DeveloperPage.routeName,
              ),
              MenuItemWidget(
                color: Colors.grey[700],
                name: "Help",
                routeName: HelpPage.routeName,
              ),
              

             
            ],
          ),
        ),
      ),
    );
  }
}
