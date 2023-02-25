import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              // margin: EdgeInsets.all(20),
              color: Color(0xffF1F9FC),
              height: 130,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                text: '4.85',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 2.0),
                                  child: Text(
                                    ' / 5',
                                    textScaleFactor: 1.1,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            ]),
                          ),
                          RatingBar(
                              initialRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemSize: 25,
                              itemCount: 5,
                              ratingWidget: RatingWidget(
                                  full: const Icon(Icons.star,
                                      color: Colors.orange),
                                  half: const Icon(
                                    Icons.star_half,
                                    color: Colors.orange,
                                  ),
                                  empty: const Icon(
                                    Icons.star_outline,
                                    color: Colors.orange,
                                  )),
                              onRatingUpdate: (value) {
                                // setState(() {
                                //   _ratingValue = value;
                                // });
                              }),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text('Seller Communication'),
                                Text('Delivary time '),
                                Text('Services'),
                                Text('Time'),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                LinearPercentIndicator(
                                  width: 100.0,
                                  lineHeight: 8.0,
                                  percent: 0.9,
                                  progressColor: Color(0xffFFA500),
                                ),
                                LinearPercentIndicator(
                                  width: 100.0,
                                  lineHeight: 8.0,
                                  percent: 0.8,
                                  progressColor: Color(0xffFFA500),
                                ),
                                LinearPercentIndicator(
                                  width: 100.0,
                                  lineHeight: 8.0,
                                  percent: 0.75,
                                  progressColor: Color(0xffFFA500),
                                ),
                                LinearPercentIndicator(
                                  width: 100.0,
                                  lineHeight: 8.0,
                                  percent: 0.9,
                                  progressColor: Color(0xffFFA500),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('User Reviews'),
                      Text('Most Useful'),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.transparent,
                        child: ClipOval(
                            child: Image.network(
                          'https://scontent.fktm16-1.fna.fbcdn.net/v/t1.6435-9/78267354_2355131041483368_4415520856130715648_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=174925&_nc_ohc=SZw7PH0aps0AX8gvsM2&tn=2N9OFY7V3VL8-h9D&_nc_ht=scontent.fktm16-1.fna&oh=00_AfDkxsvq74WLkwEkxb1x1jandKORUJmh8zZZ8dQZjFU6Yw&oe=641432BA',
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('John Doe'),
                            Text('Graphics Design'),
                          ],
                        ),
                      ),
                      Spacer(),
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
                            // setState(() {
                            //   _ratingValue = value;
                            // });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      'Lorem ipsum dolor sit amet, gula eget dolor. Aenean massa.consectetuer adipiscing elit. Aenean commodo ligula eget dolor'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.transparent,
                        child: ClipOval(
                            child: Image.network(
                          'https://scontent.fktm16-1.fna.fbcdn.net/v/t1.6435-9/78267354_2355131041483368_4415520856130715648_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=174925&_nc_ohc=SZw7PH0aps0AX8gvsM2&tn=2N9OFY7V3VL8-h9D&_nc_ht=scontent.fktm16-1.fna&oh=00_AfDkxsvq74WLkwEkxb1x1jandKORUJmh8zZZ8dQZjFU6Yw&oe=641432BA',
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('John Doe'),
                            Text('Graphics Design'),
                          ],
                        ),
                      ),
                      Spacer(),
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
                            // setState(() {
                            //   _ratingValue = value;
                            // });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      'Lorem ipsum dolor sit amet, gula eget dolor. Aenean massa.consectetuer adipiscing elit. Aenean commodo ligula eget dolor'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.transparent,
                        child: ClipOval(
                            child: Image.network(
                          'https://scontent.fktm16-1.fna.fbcdn.net/v/t1.6435-9/78267354_2355131041483368_4415520856130715648_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=174925&_nc_ohc=SZw7PH0aps0AX8gvsM2&tn=2N9OFY7V3VL8-h9D&_nc_ht=scontent.fktm16-1.fna&oh=00_AfDkxsvq74WLkwEkxb1x1jandKORUJmh8zZZ8dQZjFU6Yw&oe=641432BA',
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('John Doe'),
                            Text('Graphics Design'),
                          ],
                        ),
                      ),
                      Spacer(),
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
                            // setState(() {
                            //   _ratingValue = value;
                            // });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      'Lorem ipsum dolor sit amet, gula eget dolor. Aenean massa.consectetuer adipiscing elit. Aenean commodo ligula eget dolor'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.transparent,
                        child: ClipOval(
                            child: Image.network(
                          'https://scontent.fktm16-1.fna.fbcdn.net/v/t1.6435-9/78267354_2355131041483368_4415520856130715648_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=174925&_nc_ohc=SZw7PH0aps0AX8gvsM2&tn=2N9OFY7V3VL8-h9D&_nc_ht=scontent.fktm16-1.fna&oh=00_AfDkxsvq74WLkwEkxb1x1jandKORUJmh8zZZ8dQZjFU6Yw&oe=641432BA',
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('John Doe'),
                            Text('Graphics Design'),
                          ],
                        ),
                      ),
                      Spacer(),
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
                            // setState(() {
                            //   _ratingValue = value;
                            // });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      'Lorem ipsum dolor sit amet, gula eget dolor. Aenean massa.consectetuer adipiscing elit. Aenean commodo ligula eget dolor'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
