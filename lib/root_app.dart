import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:insta_ui/account_page.dart';
import 'package:insta_ui/activity_page.dart';
import 'package:insta_ui/home_page.dart';
import 'package:insta_ui/new_post.dart';
import 'package:insta_ui/search_page.dart';
import "colors.dart";
import "package:flutter_svg/flutter_svg.dart";
import "icons.dart";

class RootApp extends StatefulWidget {

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:getBody(),
      bottomNavigationBar: getBottomNavBar(),
    );
  }

  Widget getBody(){
    return IndexedStack(
      index:indexPage,
      children: [
        HomePage(),
        SearchPage(),
        NewPost(),
        ActivityPage(),
        AccountPage(),

      ],
    );
  }

  Widget getBottomNavBar(){
    return Container(
      height:80,
      decoration: BoxDecoration(
        color:bgDark,
        border: Border(
          top:BorderSide(width:1, color:bgDark.withOpacity(0.3))
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(icons.length,(index){
          return IconButton(
            onPressed: (){
              setState(() {
                indexPage=index;
              });
            },
            icon: SvgPicture.asset(
              indexPage==index

              ? icons[index]['active']
              : icons[index]['inactive'],
              width:25,
              height:25,),
          );
        })
      ),
    );
  }
}
