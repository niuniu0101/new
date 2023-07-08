import 'package:flutter/material.dart';
import 'chat/message_page.dart';
import 'contacts/contacts.dart';

import 'found/found.dart';


enum ItemType{
  GroupChat,AddFriends,Qrcode,Payments,Help
}

class App extends StatefulWidget {

  @override
  MainState createState() => MainState();

}

class MainState extends State<App> {

  var _currentIndex = 0;

  MessagePage ?message;
   Contacts ? contacts;

   Found ? found;

  // Found found;

  // Personal me;

  currentPage(){
    switch (_currentIndex){
      case 0:
        if(message == null)
          {
            message = new MessagePage();

          }
        return message;

      case 1:
        if(contacts == null)
        {
          contacts = new Contacts();

        }
        return contacts;


      case 2:
        if(found == null)
        {
          found = new Found();

        }
        return found;


      //
      // case 2:
      //   if(found == null)
      //   {
      //     message = new Found();
      //
      //   }
      //   return found;
      //

      // case 3:
      //   if(me == null)
      //   {
      //     message = new Personal();
      //
      //   }
      //   return me;

    }
  }

  _popupMenuItem(String title,{String ?imagePath,IconData ?icon}){
    return PopupMenuItem(child: Row(
      children:<Widget> [
        imagePath != null ? Image.asset(imagePath,width: 32.0,height: 32.0,) : SizedBox(
          width: 32.0,
          height: 32.0,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    )

    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: Text("pivot chat"),
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'search');
            },
            child: Icon(
              Icons.search,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 20.0),
            child: GestureDetector(
              onTap: (){
              showMenu(context: context,
                position: RelativeRect.fromLTRB(500, 76.0, 10.0, 0.0),
                  items: <PopupMenuEntry>[
                  _popupMenuItem("发起群聊",imagePath: "images/change01.png"),
                    _popupMenuItem("添加好友",imagePath: "images/change02.png"),
                    _popupMenuItem("扫一扫",imagePath: "images/change03.png"),
                    _popupMenuItem("收付款",imagePath: "images/change04.png"),
                  ],
              );
              },
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
          type :BottomNavigationBarType.fixed ,
        currentIndex: 1,
        onTap: ( (index){
          setState(() {
            _currentIndex = index;
          });
        }),
        items: [
          new BottomNavigationBarItem(
            // title: new Text(
            //   "pivot chat",
            // style: TextStyle(
            //   color: _currentIndex == 0 ? Color(0xFF46c01b) : Color(0xff999999)
            // )
            //   ,),
            label : "pivot chat",
                icon: _currentIndex == 0 ? Image.asset("images/change01.png",
                width: 32.0,
                height: 28.0,) :
                Image.asset("images/contacts.png",
                  width: 32.0,
                  height: 28.0,)

          ),

          new BottomNavigationBarItem(
            // title: new Text(
            //   "pivot chat",
            // style: TextStyle(
            //   color: _currentIndex == 0 ? Color(0xFF46c01b) : Color(0xff999999)
            // )
            //   ,),
              label : "通讯录",
              icon: _currentIndex == 1 ? Image.asset("images/change02.png",
                width: 32.0,
                height: 28.0,) :
              Image.asset("images/friends.png",
                width: 32.0,
                height: 28.0,)

          ),

          new BottomNavigationBarItem(
            // title: new Text(
            //   "pivot chat",
            // style: TextStyle(
            //   color: _currentIndex == 0 ? Color(0xFF46c01b) : Color(0xff999999)
            // )
            //   ,),
              label : "朋友圈",
              icon: _currentIndex == 2 ? Image.asset("images/change03.png",
                width: 32.0,
                height: 28.0,) :
              Image.asset("images/search.png",
                width: 32.0,
                height: 28.0,)

          ),

          new BottomNavigationBarItem(
            // title: new Text(
            //   "pivot chat",
            // style: TextStyle(
            //   color: _currentIndex == 0 ? Color(0xFF46c01b) : Color(0xff999999)
            // )
            //   ,),
              label : "我",
              icon: _currentIndex == 3 ? Image.asset("images/change04.png",
                width: 32.0,
                height: 28.0,) :
              Image.asset("images/me.png",
                width: 32.0,
                height: 28.0,)

          )
        ],
      ) ,
       body: currentPage(),
    );
  }
}