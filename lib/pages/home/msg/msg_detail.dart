import 'package:flutter/material.dart';

class MsgDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        title: getAvatar(context),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            padding: EdgeInsets.all(14.0),
            children: <Widget>[
              SizedBox(
                height: 60.0,
              ),
              ...getMsgs(context),
            ],
            reverse: true,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 6.0, bottom: 15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                padding: EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1.0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.camera),
                      onPressed: () {},
                    ),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5.0),
                            border: InputBorder.none,
                            hintText: 'Message...'),
                        textInputAction: TextInputAction.newline,
                        autofocus: true,
                        maxLines: 5,
                        minLines: 1,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.mic_none),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.image),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.sentiment_satisfied),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          )
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
              height: 38,
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

  List<Widget> getMsgs(BuildContext context) {
    return <Widget>[
      getMsgBubble(msg: getTextMsg(context, text: 'i am happy lorem i am happy loremi am happy loremi am happy lorem')),
      getMsgBubble(
          sent: false,
          msg: getTextMsg(context, text: 'i am happy', sent: false)),
      getMsgBubble(
        sent: false,
        msg: getImageMsg(context,
            url: 'https://source.unsplash.com/random', sent: false),
      ),
      getMsgBubble(
        msg: getImageMsg(context, url: 'https://source.unsplash.com/random/?mountains'),
      )
    ].reversed.toList();
  }

  Widget getMsgBubble({bool sent = true, Widget msg}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment:
            sent ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          sent
              ? Container()
              : ClipRRect(
                  child: Image.network(
                    'https://source.unsplash.com/random/100x100',
                    height: 30,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
          msg
        ],
      ),
    );
  }

  Widget getTextMsg(BuildContext context, {String text, bool sent = true}) {
    return Container(
      child: Text(
        text,
        style: Theme.of(context).textTheme.subhead,
        softWrap: true,
      ),
      constraints: BoxConstraints(maxWidth: 2 * MediaQuery.of(context).size.width / 3,),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20.0),
        color: sent ? Color(0xd6d6d6d6) : Colors.transparent,
        border: sent ? null : Border.all(width: 1.0, color: Color(0xd6d6d6d6)),
      ),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
      margin: sent ? null : EdgeInsets.only(left: 8.0),
    );
  }

  Widget getImageMsg(BuildContext context, {String url, bool sent = true}) {
    return Container(
      child: ClipRRect(
        child: Image.network(
          url,
          fit: BoxFit.contain,
          width: 2 * MediaQuery.of(context).size.width / 3,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: sent ? null : EdgeInsets.only(left: 8.0),
    );
  }
}
