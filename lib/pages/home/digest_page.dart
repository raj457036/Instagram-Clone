import 'package:flutter/material.dart';
import './digest/status_list.dart';
import './digest/post_card.dart';
import 'dart:math' as math;

class DigestPage extends StatefulWidget {
  const DigestPage({Key key}) : super(key: key);

  @override
  _DigestPage createState() => _DigestPage();
}

class _DigestPage extends State<DigestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Icon(Icons.camera_alt, color: Colors.black),
              SizedBox(
                width: 8.0,
              ),
              Image.asset(
                'assets/logos/logofont.png',
                height: 34,
              ),
            ],
          ),
          actions: <Widget>[
            Padding(
              child: Transform.rotate(
                child: Icon(Icons.send, color: Colors.black),
                angle: -math.pi / 4.0,
              ),
              padding: EdgeInsets.only(right: 12.0),
            )
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
