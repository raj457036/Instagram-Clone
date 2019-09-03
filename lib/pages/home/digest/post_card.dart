import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class PostCard extends StatefulWidget {
  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  int id = 0;
  bool liked = false;
  int likesCount = 0;
  int commentCount = 89;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                child: getAvatar(context),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () => getOptions(context),
                  ),
                ),
              )
            ],
          ),
          Divider(
            height: 1,
          ),
          GestureDetector(
            child: Image.network(
              'https://source.unsplash.com/random/',
            ),
            onDoubleTap: () {
              setState(() {
                this.liked = true;
              });
            },
          ),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  liked ? Icons.favorite : Icons.favorite_border,
                  color: liked ? Colors.red : Colors.black,
                ),
                onPressed: () => setState(() {
                  this.liked = !this.liked;
                }),
              ),
              IconButton(
                icon: Icon(Icons.mode_comment),
                onPressed: () {},
              ),
              IconButton(
                icon: Transform.rotate(
                  child: Icon(Icons.send),
                  angle: -math.pi / 4,
                ),
                onPressed: () {},
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: Icon(Icons.bookmark_border),
                  onPressed: () {},
                ),
              ))
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0),
            child: Text(
              '$likesCount likes',
              style: Theme.of(context).textTheme.body2,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 5.0),
            child: Text.rich(
              TextSpan(children: [
                TextSpan(
                  text: 'hello world ',
                  style: Theme.of(context).textTheme.body2,
                ),
                TextSpan(
                    text:
                        'This is a normal comment for every one to see here and now')
              ]),
              maxLines: 2,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.0, bottom: 10.0),
            child: Text.rich(
              TextSpan(children: [
                TextSpan(
                    text: 'View all $commentCount comments',
                    style: Theme.of(context).textTheme.subtitle),
              ]),
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }

  Widget getAvatar(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: ClipRRect(
            child: Image.network(
              'https://source.unsplash.com/random/100x100',
              height: 32,
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            border: Border.all(width: 1.0, color: Colors.amber),
          ),
          padding: EdgeInsets.all(1.0),
          margin: EdgeInsets.only(right: 8.0),
        ),
        Text(
          'ghanta',
          maxLines: 1,
          style: Theme.of(context).textTheme.body2,
        )
      ],
    );
  }

  Future getOptions(BuildContext context) {
    print('hello');
    return showDialog(
      context: context,
      builder: (_) => SimpleDialog(
        contentPadding: EdgeInsets.all(0),
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Report...'),
            ),
            onTap: () {
              print(id);
            },
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Copy Link'),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Turn On Post Notification'),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Share to...'),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Unfollow'),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Mute'),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
