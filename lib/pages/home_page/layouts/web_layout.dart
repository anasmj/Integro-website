// import 'package:flutter/material.dart';

// import '../components/header.dart';

// class WebViewHomePage extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: getHeader(),
//         centerTitle: true,
//         backgroundColor: Colors.transparent,
//         elevation: 0.0,
//       ),
//       extendBodyBehindAppBar: true,
//       body: Container(
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//           image: AssetImage("assets/images/background.jpg"),
//           fit: BoxFit.cover,
//         )),
//         width: double.infinity,
//         height: double.infinity,
//         child: Align(
//           alignment: Alignment.centerLeft,
//           child: Padding(
//             padding: const EdgeInsets.only(left: 60.0),
//             child: Container(
//               height: MediaQuery.of(context).size.height * 0.2,
//               //width: MediaQuery.of(context).size.width * 0.25,
//               child: FittedBox(
//                 child: RichText(
//                   overflow: TextOverflow.ellipsis,
//                   text: const TextSpan(
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: 'We provide outsourced\n',
//                         style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       TextSpan(
//                           text: 'IT Services\n',
//                           style: TextStyle(fontSize: 48, color: Colors.white)),
//                       TextSpan(
//                         text: "for small and mid-sized business",
//                         style: TextStyle(fontSize: 12, color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
