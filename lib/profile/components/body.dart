import 'package:flutter/material.dart';

import 'buttons.dart';
import 'story_line.dart';
import 'tabs_with_gallery.dart';
import 'user_description.dart';
import 'user_info_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        UserInfoHeader(size: size),
        UserDescription(size: size),
        Buttons(size: size),
        StoryLine(size: size),
        TabsWithGallery(size: size),
      ],
    );
  }
}
