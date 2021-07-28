import 'package:flutter/material.dart';

import '../../constants.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          bottom: kDefaultPadding),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            icon: Icon(Icons.add_circle),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.live_tv),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('assets/images/avatar.png'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
