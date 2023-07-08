import 'package:flutter/material.dart';
import 'contact_item.dart';

class ContactHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        ContactItem(titleName:'新的朋友',imageName:'images/addfriend.png'),

        ContactItem(titleName:'群聊',imageName:'images/groupchat.png'),

        ContactItem(titleName:'公众号',imageName:'images/public.png'),

      ],
    );
  }
}