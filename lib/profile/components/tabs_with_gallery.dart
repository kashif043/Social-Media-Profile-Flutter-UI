import 'package:flutter/material.dart';

class TabsWithGallery extends StatelessWidget {
  const TabsWithGallery({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.393,
      color: Colors.red,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 50,
            backgroundColor: Colors.transparent,
            elevation: 0,
            bottom: const TabBar(
              indicatorColor: Colors.black,
              indicatorWeight: 1,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.grid_on,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.video_label,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.live_tv,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.account_box_outlined,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(9, (index) {
                    return Center(
                      child: Container(
                        width: 150,
                        height: 150,
                        child: Padding(
                          padding: EdgeInsets.all(2),
                          child: Image.asset(
                            'assets/images/user_post_${index + 1}.png',
                            fit: BoxFit.cover,
                            width: 150,
                            height: 150,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Icon(
                Icons.video_label,
              ),
              Icon(
                Icons.live_tv,
              ),
              Icon(
                Icons.account_box_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
