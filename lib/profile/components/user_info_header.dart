import 'package:flutter/material.dart';

class UserInfoHeader extends StatelessWidget {
  const UserInfoHeader({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.11,
      child: Row(
        children: <Widget>[
          Container(
            width: size.width * 0.25,
            child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset('assets/images/avatar.png'),
            ),
          ),
          Container(
            width: size.width * 0.25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                UserInfo(
                  name: '210',
                  size: 20,
                  fontWeight: FontWeight.bold,
                ),
                UserInfo(
                  name: 'post',
                  size: 17,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          Container(
            width: size.width * 0.25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                UserInfo(
                  name: '600',
                  size: 20,
                  fontWeight: FontWeight.bold,
                ),
                UserInfo(
                  name: 'followers',
                  size: 17,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          Container(
            width: size.width * 0.25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                UserInfo(
                  name: '500',
                  size: 20,
                  fontWeight: FontWeight.bold,
                ),
                UserInfo(
                  name: 'following',
                  size: 17,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key key,
    this.name,
    this.size,
    this.fontWeight,
  }) : super(key: key);
  final String name;
  final double size;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$name',
      style: TextStyle(
        color: Colors.black,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
