import 'package:flutter/material.dart';

class ContactVO {
  String seationKey;
  String name;
  String avatarUrl;


  ContactVO({
    required this.seationKey,required this.name,required this.avatarUrl
}
);
}

List<ContactVO> contactData = [
  new ContactVO(seationKey: 'A', name: 'AAA国豪驾校', avatarUrl: 'https://tse2-mm.cn.bing.net/th/id/OIP-C.-MHieAORbTRCivZtVv2OkwHaF1?w=187&h=147&c=7&r=0&o=5&dpr=1.6&pid=1.7'),
  new ContactVO(seationKey: 'A', name: 'Abc小黄', avatarUrl: 'https://ts2.cn.mm.bing.net/th?id=OIP-C.zF2d4JIYVYGK6k6nsBTlvQHaHZ&w=250&h=249&c=8&rs=1&qlt=90&o=6&dpr=1.6&pid=3.1&rm=2'),
  new ContactVO(seationKey: 'B', name: 'B牛牛', avatarUrl: 'https://pic3.zhimg.com/v2-24835354fb00572ab491e4cf643ad31a_r.jpg'),
  new ContactVO(seationKey: 'C', name: '曹曹', avatarUrl:'https://th.bing.com/th?q=Actors+Off+Stage&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.6&pid=InlineBlock&mkt=en-US&cc=US&setlang=zh-Hans&adlt=moderate&t=1&mw=247' ),
  new ContactVO(seationKey: 'Z', name: '钟钟', avatarUrl: 'https://tse3-mm.cn.bing.net/th/id/OIP-C.MFa2faOWNfH0RAPf1YGpsQHaEo?w=263&h=180&c=7&r=0&o=5&dpr=1.6&pid=1.7'),


];
