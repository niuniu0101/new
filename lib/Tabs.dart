import 'package:flutter/material.dart';
import 'package:tryplus/friend.dart';
import 'Category.dart';
import 'friend.dart';
import 'Home.dart';
import 'Setting.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int currentIndex = 0;
  List _pageList = [HomePage(),FriendPage(), CategoryPage(), SettingPage(),];
  final  List<BottomNavigationBarItem> _item = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "首页",
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.contact_emergency), label: "Friend"),
    BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
    BottomNavigationBarItem(
        icon: Icon(Icons.settings), label: "setting"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: const Text('chat chat now'),
          centerTitle: true,
          leading: Icon(Icons.dehaze),


        ),

        body: _pageList[currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: _item,
        ),
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.yellow,

      ),
    );
  }
}

