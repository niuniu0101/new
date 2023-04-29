import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';
import 'package:tryplus/Friend.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('好友列表'),

        centerTitle: true,

      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // 跳转到聊天页面
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatPage()),
              );
            },
            child: ListTile(
              leading: CircleAvatar(
                //child: Text('$index'),
                // child: Image.network("https://th.bing.com/th/id/R.b2e918c27d7c87f933524a567948c4a4?rik=KzCM4e4CQyYllw&riu=http%3a%2f%2fpic.ntimg.cn%2f20110116%2f6614812_161513252000_2.jpg&ehk=CucnumxpTzAZWP44nihTq%2b3%2b4NEY%2f0aTD6vyFyntpnA%3d&risl=&pid=ImgRaw&r=0"),
                //  backgroundImage: AssetImage('assets/images/$index.png'),
                child: Image(image:AssetImage('images/image_${index%4+1}.png') ),


              ),
              title: Text('好友 ${index+1}'),
              subtitle: Text('最近的消息鸭'),
            ),
          );
        },
      ),
    );
  }
}


// 聊天页面



class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _textEditingController = TextEditingController();
  List<String> _messages = [];

  @override
  void initState() {
    super.initState();
    // 从SharedPreferences中读取聊天记录
    _loadMessages();
  }

  Future<void> _loadMessages() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _messages = prefs.getStringList('messages') ?? [];
    });
  }

  Future<void> _saveMessages() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('messages', _messages);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('好友 1'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (BuildContext context, int index) {
                final isMe = index % 2 == 0;
                return Container(
                  alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                      color: isMe ? Colors.blue : Colors.grey.shade300,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: isMe ? Radius.circular(20) : Radius.circular(0),
                        bottomRight: isMe ? Radius.circular(0) : Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      _messages[index],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '输入消息',
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () async {
                  final text = _textEditingController.text;
                  setState(() {
                    _messages.add(text);
                  });
                  _textEditingController.clear();
                  // 保存聊天记录到SharedPreferences
                  await _saveMessages();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}