import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.07,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            width: size.width * 0.4,
            child: Container(
              height: 40,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Follow',
                  style: TextStyle(fontSize: 16),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.4,
            child: Container(
              height: 40,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Message',
                  style: TextStyle(fontSize: 16),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    side: BorderSide(width: 0.2),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.1,
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 0.3),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
