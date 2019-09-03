import 'package:flutter/material.dart';
import './msg_detail.dart';

class MsgList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(18.0),
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: Colors.grey),
            borderRadius: BorderRadius.circular(5.0),
          ),
          padding: EdgeInsets.all(6.0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
              Text(
                ' Search',
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Messages',
                style: Theme.of(context).textTheme.title,
              ),
              Text.rich(TextSpan(
                  text: '1 Request',
                  style: TextStyle(color: Theme.of(context).primaryColor)))
            ],
          ),
        ),
        getTile(context),
        getTile(context),
        getTile(context),
        getTile(context),
        getTile(context),
        getTile(context),
        getTile(context),
        getTile(context),
        getTile(context),
        getTile(context),
        getTile(context),
        getTile(context),
        getTile(context),
        getTile(context),
      ],
    );
  }

  Widget getTile(BuildContext context) {
    return ListTile(
      leading: getAvatar(),
      title: Text(
        'Sod._.p',
        style: Theme.of(context).textTheme.body1,
      ),
      subtitle: Text(
        'Active now',
        style: Theme.of(context).textTheme.subtitle,
      ),
      trailing: IconButton(
        icon: Icon(Icons.camera_alt),
        onPressed: () {
          print('camera clicked');
        },
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute<void>(
          builder: (_) => MsgDetail()
        ));
      },
      onLongPress: () => getOptions(context),
    );
  }

  Widget getAvatar() {
    return Container(
      child: ClipRRect(
        child: Image.network(
          'https://source.unsplash.com/random/100x100',
          height: 60,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(width: 2.0, color: Colors.amber),
      ),
      padding: EdgeInsets.all(2.0),
    );
  }

  Future getOptions(BuildContext context) {
    print('hello');
    return showDialog(
      context: context,
      builder: (_) => SimpleDialog(
        title: Text(
          'Sod._.p',
          style: Theme.of(context).textTheme.title,
        ),
        titlePadding: EdgeInsets.all(15.0),
        contentPadding: EdgeInsets.all(0),
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Delete'),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Mute Messages'),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Mute Video Chats'),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
