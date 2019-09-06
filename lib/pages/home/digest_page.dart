import 'package:flutter/material.dart';
import './digest/status_list.dart';
import './digest/post_card.dart';
import 'dart:math' as math;

class DigestPage extends StatefulWidget {
  final Function msg;
  const DigestPage(this.msg, {Key key}) : super(key: key);

  @override
  _DigestPage createState() => _DigestPage(msg);
}

class _DigestPage extends State<DigestPage> {
  Function msg;
  _DigestPage(this.msg);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.black),
            onPressed: () {},
            iconSize: 30.0,
          ),
          titleSpacing: 0.0,
          title: Image.asset(
            'assets/logos/logofont.png',
            height: 34,
          ),
          actions: <Widget>[
            Transform.rotate(
              child: IconButton(
                icon: Icon(Icons.send, color: Colors.black),
                onPressed: () {
                  msg();
                },
              ),
              angle: -math.pi / 4.0,
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            child: Padding(
          padding: EdgeInsets.all(0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.add_box),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.supervised_user_circle),
                onPressed: () {},
              )
            ],
          ),
        )),
        body: RefreshIndicator(
          color: Colors.grey,
          child: ListView(
            children: <Widget>[
              StatusList(),
              Divider(
                height: 1,
              ),
              PostCard(),
              PostCard(),
              PostCard(),
              PostCard(),
            ],
          ),
          onRefresh: () {},
        ));
  }
}
