import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'contacts_vo.dart';

class ContactSiderList extends StatefulWidget {

  final List<ContactVO> items;
  final IndexedWidgetBuilder headerBuikder;
  final IndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder sectionBuilder;

  ContactSiderList(
  {
     Key ? key,
    required this.items,
    required this.headerBuikder,
    required this.itemBuilder,
    required this.sectionBuilder,
}
      ) : super(key: key);

  @override
  ContactState createState()  =>  new ContactState();

}

class ContactState extends State<ContactSiderList> implements SectionIndexer{

  Color _pressColor = Colors.transparent;

  final ScrollController _scrollController = new ScrollController();

  bool _onNotification(ScrollNotification notification){
    return true;
  }

  _isShowHeaderView(index){
    if(index == 0 && widget.headerBuikder != null){
      return Offstage(
        offstage: false,
        child: widget.headerBuikder(context,index),

      );
    }
    return Container();

  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Stack(
        children: [

          //能用功能，列表加载更多
          NotificationListener(
            onNotification: _onNotification,
            child: ListView.builder(
                controller: _scrollController,
                physics: const AlwaysScrollableScrollPhysics(),

                itemCount: widget.items.length,
                itemBuilder:(BuildContext context, int index){
                  return Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        _isShowHeaderView(index),
                        Offstage(
                          offstage: _shouldShowHeader(index),

                          child: widget.sectionBuilder(context ,index),
                        ),

                        Column(
                          children: [
                            widget.itemBuilder(context , index),

                          ],
                        )
                      ],
                    ),
                  );
                },
          ),
             ),

          //排序字母
          Positioned(
            right: 0.0,
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height,
                width: 32.0,
                color: _pressColor,

                child: GestureDetector(

                  onTapDown: (TapDownDetails t){
                    setState(() {
                      _pressColor = Colors.grey;
                    });
                  },
                  onTapUp: (TapUpDetails t){
                    setState(() {
                      _pressColor = Colors.transparent;
                    });
                  },
                  onVerticalDragStart: (DragStartDetails details){
                    setState(() {
                      _pressColor = Colors.grey ;
                    });
                  },
                  onVerticalDragEnd: (DragEndDetails details){
                    setState(() {
                      _pressColor = Colors.transparent;
                    });
                  },
                  onVerticalDragUpdate: (DragUpdateDetails details){

                  },
                  child: ListView.builder(
                      itemCount: siderBarKey.length,
                      itemBuilder:(BuildContext context,int index){
                        return Container(
                          alignment: Alignment.center,
                          height: 17.0,
                          child: Text(siderBarKey[index]),
                        );
                      } ),
                ),
              ),
          )
        ]
      ),
    );
  }
  bool _shouldShowHeader(int position){
    if(position < 0)
      {
        return false;
      }
    if(position == 0)
      {
        return false;
      }
    if(position != 0 && widget.items[position].seationKey != widget.items[position - 1].seationKey){
      return false;
    }
    return true;
  }

  @override
  ListScrollToPosition(int index) {
    // TODO: implement ListScrollToPosition
    throw UnimplementedError();
  }
}

abstract class SectionIndexer{
  ListScrollToPosition(int index );
}

const siderBarKey = <String>[
  "^",
  "*",
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "R",
  "S",
  "T",
  "U",
  "V",
  "W",
  "X",
  "Y",
  "Z",
  "#"
];