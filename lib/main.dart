import 'package:flutter/material.dart';
import 'app.dart';
import 'loading.dart';
//import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';  //这个是要自己配置的
import 'package:webview_flutter/webview_flutter.dart';
import 'search.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "pivotchat",
    theme: mDefaultTheme,
    //下面是路由
    routes: <String,WidgetBuilder>{
      "app" : (BuildContext contex) => new App(),
     //  "/friends" : (_) => new WebviewScaffold(
     //      url: "https//weixin.qq.com/",
     //    appBar: new AppBar(
     //      title: new Text("微信朋友圈"),
     //    ),
     //    withZoom: true,  //缩放
     //    withLocalStorage: true, //本地存储
     //  ),
     'search' : (BuildContext context)  => new Search(),

    },
      home : new LoadingPage(),
  )
);


//这是自定义的一个主题
final ThemeData mDefaultTheme = new ThemeData(
  primaryColor: Color(0xff303030),
  scaffoldBackgroundColor: Color(0xFFebebeb),
  cardColor: Color(0xff393a3f),

);
