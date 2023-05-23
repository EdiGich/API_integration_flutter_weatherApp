// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:wallpaper_app/widgets/ImagesWidget.dart';

class HomePage  extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          body: SafeArea(
            child: Column(children:[
              //Custom App Bar
              Container(
                margin:  EdgeInsets.only(top:5),
                padding:  EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    Text(
                      "DP WallPapers",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "favPage");
                      },
                      child: Icon(
                        Icons.favorite,
                        size:30,
                        color:Colors.red,
                      ),
                    ),
                  ],
                ),
              ),

                  //Search Widget
                  // SearchWidget(),

                  //Tab Bar
                  // ignore: prefer_const_constructors
                  TabBar (
                    isScrollable: true,
                    labelColor:Colors.black,
                    labelStyle:const TextStyle(fontSize:16, fontWeight: FontWeight.bold),
                    padding:const EdgeInsets.symmetric(horizontal:5),
                    indicator:const BoxDecoration(
                      border:Border(bottom: BorderSide(width:2)),
                    ),
                    tabs: [
                      Tab(text: "All"),
                      Tab(text: "Trending"),
                      Tab(text: "Featured"),
                      Tab(text: "Nature"),
                      Tab(text: "Sky"),
                      Tab(text: "Sea"),
                    ],
                  ),
                  Flexible(
                    flex: 1,
                    child:TabBarView(
                      children:[
                        ImagesWidget(),
                        ImagesWidget(),
                        ImagesWidget(),
                        ImagesWidget(),
                        ImagesWidget(),
                        ImagesWidget(),
                        
                    ],
                    ), 
                    ),
            ]),
          ),
        ),
    );
  }
}