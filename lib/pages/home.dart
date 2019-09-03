import 'package:flutter/material.dart';
import './home/digest_page.dart';
import './home/camera_page.dart';
import './home/msg_page.dart';

class HomePage extends StatelessWidget {
  final PageController controller = PageController(initialPage: 1 );

  @override
  Widget build(BuildContext context) {
    return getPages();
  }

  Widget getPages() {
    return PageView(
      controller: controller,
      pageSnapping: true,
      children: <Widget>[
        CameraPage(),
        DigestPage(),
        MsgPage(),
      ],
    );
  }
}
