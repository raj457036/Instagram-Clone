import 'package:flutter/material.dart';
import './msg/msg_list.dart';

class MsgPage extends StatefulWidget {
  const MsgPage({Key key}) : super(key: key);

  @override
  _MsgPage createState() => _MsgPage();
}

class _MsgPage extends State<MsgPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              'hey_raj_here',
              style: TextStyle(
                color: Colors.black,
                fontSize: Theme.of(context).textTheme.subhead.fontSize,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              size: 16.0,
              color: Colors.black,
            )
          ],
        ),
        actions: <Widget>[
          Padding(
            child: Icon(Icons.videocam, color: Colors.black),
            padding: EdgeInsets.symmetric(horizontal: 12.0),
          ),
          Padding(
            child: Icon(Icons.mode_edit, color: Colors.black),
            padding: EdgeInsets.symmetric(horizontal: 12.0),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.camera_alt,
                color: Colors.blue,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Camera',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
              )
            ],
          ),
          onPressed: () {},
          padding: EdgeInsets.all(12.0),
        ),
      ),
      body: RefreshIndicator(
        child: MsgList(),
        onRefresh: () {},
      ),
    );
  }
}
