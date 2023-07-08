import 'package:flutter/material.dart';
import 'message.dart';
import 'package:date_format/date_format.dart';
import 'package:untitled13/common/touch_callback.dart';

class MessageItem extends StatefulWidget {
  final MessageData message;
  MessageItem(this.message);

  @override
  MessageItemState createState() => MessageItemState();
}

class MessageItemState extends State<MessageItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 0.5, color: Color(0xFFd9d9d9))),
      ),
      height: 64.0,
      child: TouchCallBack(
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Image.network(
                widget.message.avatar,
                width: 48.0,
                height: 48.0,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.message.title,
                    style: TextStyle(fontSize: 16.0, color: Color(0xFF353535)),
                    maxLines: 1,
                  ),
                  Padding(padding: const EdgeInsets.only(top: 8.0)),
                  Text(
                    widget.message.subTitle,
                    style: TextStyle(fontSize: 14.0, color: Color(0xFFa9a9a9)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: const EdgeInsets.only(right: 12.0, top: 12.0),
              child: Text(
                formatDate(widget.message.time, [HH, ':', nn, ':', ss]).toString(),
                style: TextStyle(fontSize: 14.0, color: Color(0xff111111)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
