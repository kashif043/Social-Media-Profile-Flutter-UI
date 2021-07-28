import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/constants.dart';
import 'package:social_media_profile_screen/profile/components/body.dart';
import 'package:social_media_profile_screen/profile/components/bottom_bar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Pieroborgo',
          style: TextStyle(
            color: Colors.black,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Image.asset('assets/icons/new-video.png'),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset('assets/icons/menu.png'),
          onPressed: () {},
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
