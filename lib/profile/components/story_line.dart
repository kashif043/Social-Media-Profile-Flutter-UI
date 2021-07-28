import 'package:flutter/material.dart';

class StoryLine extends StatelessWidget {
  const StoryLine({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.11,
      child: Padding(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Story(
            name: "Story 1",
            image: 'assets/images/story_flower.png',
          ),
          Story(
            name: "Story 2",
            image: 'assets/images/story_beach.png',
          ),
          Story(
            name: "Story 3",
            image: 'assets/images/story_sky.png',
          ),
        ]),
      ),
    );
  }
}

class Story extends StatelessWidget {
  const Story({
    Key key,
    this.name,
    this.image,
  }) : super(key: key);
  final String name, image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: <Widget>[
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                width: 0.2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(
            '$name',
            style: TextStyle(color: Colors.black, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
