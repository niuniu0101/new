
class MessageData{
  String avatar;
  String title;
  String subTitle;
  DateTime time;
  MessageType type;
  
  MessageData(this.avatar,this.title,this.subTitle,this.time,this.type);
}

enum MessageType{ SYSTEM,PUBLIC,CHAT,GROUP}

List<MessageData>  messageData = [

  new MessageData(("https://ts4.cn.mm.bing.net/th?id=OIP-C.rNLsfJbZIE1gE_hmt03l2AHaHt&w=245&h=255&c=8&rs=1&qlt=90&o=6&dpr=1.6&pid=3.1&rm=2"),
      "海绵宝宝", "突然想到", new DateTime.now(), MessageType.CHAT),

  new MessageData(("https://ts3.cn.mm.bing.net/th?id=OIP-C.UtoWxugSWAn-2slsW24xmQHaHY&w=250&h=249&c=8&rs=1&qlt=90&o=6&dpr=1.6&pid=3.1&rm=2"),
      "派大星", "你", new DateTime.now(), MessageType.CHAT),

  new MessageData(("https://ts4.cn.mm.bing.net/th?id=OIP-C._3fhNP2pbWlggaq5a9bHnQAAAA&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.6&pid=3.1&rm=2"),
      "海绵宝宝", "啦", new DateTime.now(), MessageType.CHAT),


  new MessageData(("https://ts4.cn.mm.bing.net/th?id=OIP-C._57uW0IonFtPWxrleICAdgAAAA&w=155&h=148&c=8&rs=1&qlt=90&o=6&dpr=1.6&pid=3.1&rm=2"),
      "痞老板", "嗯", new DateTime.now(), MessageType.CHAT)


];