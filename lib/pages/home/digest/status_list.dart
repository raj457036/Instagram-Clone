import 'package:flutter/material.dart';

class StatusList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(5.0),
        children: <Widget>[
          getAvatar(context, 'bob23'),
          getAvatar(context, 'he_he_mart'),
          getAvatar(context, 'dug_opi'),
          getAvatar(context, 'ravi_34_uo'),
          getAvatar(context, 'katy034'),
          getAvatar(context, '_palruk'),
        ],
      ),
    );
  }

  Widget getAvatar(BuildContext context, String name) {
    return Container(
      width: 70,
      margin: EdgeInsets.all(6.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: ClipRRect(
              child: Image.network(
                'https://source.unsplash.com/random/100x100',
                height: 55,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(width: 2.0, color: Colors.amber),
            ),
            padding: EdgeInsets.all(2.0),
            margin: EdgeInsets.only(bottom: 5.0),
          ),
          Text(name, maxLines: 1,  overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.body1,)
        ],
      ),
    );
  }


}
