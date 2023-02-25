import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:newswadhinui/Screeen/widgit/about.dart';
import 'package:newswadhinui/Screeen/widgit/gig.dart';
import 'package:newswadhinui/Screeen/widgit/portfolio.dart';
import 'package:newswadhinui/Screeen/widgit/review.dart';
import 'package:newswadhinui/Screeen/widgit/topbar.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  double? _ratingValue;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 3, vsync:this);

    return Scaffold(
      // backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const topbar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  child:
                      //  Icon(Icons.person,size: 80,color: Colors.black,)
                      ClipOval(
                          child: Image.network(
                    'https://scontent.fktm16-1.fna.fbcdn.net/v/t1.6435-9/78267354_2355131041483368_4415520856130715648_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=174925&_nc_ohc=SZw7PH0aps0AX8gvsM2&tn=2N9OFY7V3VL8-h9D&_nc_ht=scontent.fktm16-1.fna&oh=00_AfDkxsvq74WLkwEkxb1x1jandKORUJmh8zZZ8dQZjFU6Yw&oe=641432BA',
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  )),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('John Doe'),
                    Text('Graphics Design'),
                    Row(
                      children: [
                        RatingBar(
                            initialRating: 0,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
                            ratingWidget: RatingWidget(
                                full: const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 5,
                                ),
                                half: const Icon(
                                  Icons.star_half,
                                  color: Colors.orange,
                                ),
                                empty: const Icon(
                                  Icons.star_outline,
                                  color: Colors.orange,
                                )),
                            onRatingUpdate: (value) {
                              setState(() {
                                _ratingValue = value;
                              });
                            }),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: const BoxDecoration(),
                          child: Text(
                            _ratingValue != null ? _ratingValue.toString() : '',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Chat',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              child: TabBar(
                  controller: _tabController,
                  labelColor: Color(0xffFFB13F),
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Color(0xffffb13f),
                  tabs: const [
                    Tab(
                      text: 'About',
                    ),
                    Tab(
                      text: 'Reviews',
                    ),
                    Tab(
                      text: 'portfolio',
                    ),
                    Tab(
                      text: 'Gig',
                    ),
                    Tab(
                      text: 'Client',
                    ),
                  ]),
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                height: 600,
                child: TabBarView(controller: _tabController, children: const [
                  SingleChildScrollView(
                    child: About(),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 600,
                    child: Review(),
                  ),
                  Portfolio(),
                  SingleChildScrollView(
                    child: Gig(),
                  ),
                  Text('another Client'),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;
  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint _paint;
    _paint = Paint()..color = color;
    _paint = _paint..isAntiAlias = true;
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
