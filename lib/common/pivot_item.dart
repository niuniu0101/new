import 'package:flutter/material.dart';
import 'touch_callback.dart';

class PivotChatItem extends StatelessWidget{
  final String ? title;
  final String ? imagePath;
  final Icon ? icon;

  PivotChatItem({Key ? key,  this.title ,this.imagePath ,this.icon}):super(key : key);

  @override
  Widget build(BuildContext context ){
    return TouchCallBack(
      onPressed: (){
        switch(title)
        {
          case '朋友圈':
            Navigator.pushNamed(context, '/friends');
            break;
          case '收藏':
            break;
        }
      },
      child: Container(
        height: 50.0,
        child: Row(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    child: imagePath != null ? Image.asset(imagePath! , width: 32.0, height: 32.0,
                    ) : SizedBox(height: 32.0, width: 32.0, child: icon,
                    ),
                    margin: const EdgeInsets.only(left: 22.0 , right: 20.0),

                  ),
                  Text(title!,
                  style: TextStyle(fontSize: 16.0,color: Color(0xFF353535)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}