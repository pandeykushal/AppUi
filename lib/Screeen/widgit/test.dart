// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class Test extends StatelessWidget {
//   const Test({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Container(
//         color: Colors.black,
//         child: Column(
//           children: [
//             Container(
//               decoration: const BoxDecoration(),
//               // child: Text(
//               //   _ratingValue.toString(),
//               //   style: const TextStyle(
//               //       color: Colors.black, fontSize: 40),
//               // ),
//               child: RichText(
//                 text: const TextSpan(children: [
//                   TextSpan(
//                     text: '4.85',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   WidgetSpan(
//                     child: Padding(
//                       padding: EdgeInsets.only(bottom: 2.0),
//                       child: Text(
//                         ' / 5',
//                         textScaleFactor: 1.1,
//                         style: TextStyle(
//                           fontSize: 12,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   )
//                 ]),
//               ),
//             ),
//           ],
//         ),
//       ),
//       Row(
//         children: [
//           Column(
//             children: [
//               Text('Seller Communication'),
//               Text('Seller Communication'),
//               Text('Seller Communication'),
//               Text('Seller Communication'),
//             ],
//           ),
//         ],
//       ),
//       Column(
//         children: <Widget>[
//           LinearPercentIndicator(
//             width: 100.0,
//             lineHeight: 8.0,
//             percent: 0.2,
//             progressColor: Color(0xffFFA500),
//           ),
//           LinearPercentIndicator(
//             width: 100.0,
//             lineHeight: 8.0,
//             percent: 0.5,
//             progressColor: Color(0xffFFA500),
//           ),
//           LinearPercentIndicator(
//             width: 100.0,
//             lineHeight: 8.0,
//             percent: 0.9,
//             progressColor: Color(0xffFFA500),
//           ),
//           LinearPercentIndicator(
//             width: 100.0,
//             lineHeight: 8.0,
//             percent: 0.9,
//             progressColor: Color(0xffFFA500),
//           )
//         ],
//       ),
//     );
//   }
// }
