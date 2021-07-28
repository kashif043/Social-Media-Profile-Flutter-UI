import 'package:flutter/material.dart';

class UserDescription extends StatelessWidget {
  const UserDescription({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.1,
      width: size.width,
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Piero Borgo',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Product designer, Founder of leevia, Lego bricks lover.',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              'leevia.com',
              style: TextStyle(
                  color: Colors.blue.withOpacity(0.9),
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
