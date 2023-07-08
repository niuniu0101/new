import 'package:flutter/material.dart';
import 'package:untitled13/common/pivot_item.dart';

class Found extends StatefulWidget{

  @override
  _State createState()  => new _State();

}

class _State extends State<Found> {


  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: PivotChatItem(imagePath: 'images/friends.png',title: '朋友圈',),
            ),

            Container(
              margin: const EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: Column(
                children: [
                  PivotChatItem(imagePath: 'images/friends.png',title: '扫一扫',),
                  Padding(padding:
                  const EdgeInsets.only(left: 15.0,right: 15.0),
                    child: Divider(
                      height: 0.5,
                      color: Color(0xFFd9d9d9),
                    ),
                  ),
                  PivotChatItem(imagePath: 'images/friends.png',title: '摇一摇',)
                ],
              )
            ),

            Container(
                margin: const EdgeInsets.only(top: 20.0),
                color: Colors.white,
                child: Column(
                  children: [
                    PivotChatItem(imagePath: 'images/friends.png',title: '扫一扫',),
                    Padding(padding:
                    const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Divider(
                        height: 0.5,
                        color: Color(0xFFd9d9d9),
                      ),
                    ),
                    PivotChatItem(imagePath: 'images/friends.png',title: '摇一摇',)
                  ],
                )
            ),

            Container(
                margin: const EdgeInsets.only(top: 20.0 ),
                color: Colors.white,
                child: Column(
                  children: [
                    PivotChatItem(imagePath: 'images/friends.png',title: '扫一扫',),
                    Padding(padding:
                    const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Divider(
                        height: 0.5,
                        color: Color(0xFFd9d9d9),
                      ),
                    ),
                    PivotChatItem(imagePath: 'images/friends.png',title: '摇一摇',)
                  ],
                )
            ),

            Container(
              margin: const EdgeInsets.only(top: 20.0,bottom: 20.0),
              color: Colors.white,
              child: PivotChatItem(imagePath: 'images/friends.png',title: '小程序'),
            )
          ],
        ),
      ),
    );
  }
}