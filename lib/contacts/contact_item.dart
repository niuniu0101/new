import 'package:flutter/material.dart';
import 'contacts_vo.dart';

class ContactItem extends StatelessWidget {
  final ContactVO? item;
  final String? titleName;
  final String? imageName;

  ContactItem({this.item, this.titleName, this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 0.5, color: Color(0xFFd9d9d9))),
      ),
      height: 52.0,
      child: TextButton(
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            if (imageName == null)
              if (item?.avatarUrl != null && item!.avatarUrl != '')
                Image.network(
                  item!.avatarUrl!,
                  width: 36.0,
                  height: 36.0,
                  scale: 0.9,
                )
              else
                Image.network(
                  'https://ts4.cn.mm.bing.net/th?id=OIP-C.K-uy-so76bLfbhdanCBEwQHaMR&w=194&h=321&c=8&rs=1&qlt=90&o=6&dpr=1.6&pid=3.1&rm=2',
                  width: 36.0,
                  height: 36.0,
                  scale: 0.9,
                )
            else
              Image.asset(
                imageName!,
                width: 36.0,
                height: 36.0,
              ),
            Container(
              margin: const EdgeInsets.only(left: 12.0),
              child: Text(
                titleName == null ? item?.name ?? '暂时' : titleName!,
                style: TextStyle(fontSize: 18.0, color: Color(0xFF353535)),
                maxLines: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
