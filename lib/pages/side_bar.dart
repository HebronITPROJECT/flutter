// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:rxdart/rxdart.dart';
// import 'package:virtual_app/utils/screen_aware_size.dart';

// class SideBar extends StatefulWidget {
//   SideBar({Key key}) : super(key: key);

//   @override
//   _SideBarState createState() => _SideBarState();
// }

// class _SideBarState extends State<SideBar>
//     with SingleTickerProviderStateMixin<SideBar> {
//   AnimationController _animationController;
//   StreamController<bool> isSadebarOpenedStreamController;
//   Stream<bool> isSadebarOpenedStream;
//   StreamSink<bool> isSadebarOpenedSink;
//   final _animationDuration = const Duration(milliseconds: 500);

//   @override
//   void initState() {
//     super.initState();
//     _animationController =
//         AnimationController(vsync: this, duration: _animationDuration);
//     isSadebarOpenedStreamController = PublishSubject<bool>();
//     isSadebarOpenedStream = isSadebarOpenedStreamController.stream;
//     isSadebarOpenedSink = isSadebarOpenedStreamController.sink;
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     isSadebarOpenedStreamController.close();
//     isSadebarOpenedSink.close();
//     super.dispose();
//   }

//   void onIconPressed() {
//     final animationStatus = _animationController.status;
//     final isAnimationCompleted = animationStatus == AnimationStatus.completed;
//     if (isAnimationCompleted) {
//       isSadebarOpenedSink.add(false);
//       _animationController.reverse();
//     } else {
//       isSadebarOpenedSink.add(true);
//       _animationController.forward();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return StreamBuilder<bool>(
//       initialData: false,
//       stream: isSadebarOpenedStream,
//       builder: (context, isSadebarOpenedAsync) {
//         return AnimatedPositioned(
//           duration: _animationDuration,
//           top: 0,
//           bottom: 0,
//           left: isSadebarOpenedAsync.data ? 0 : -screenWidth,
//           right: isSadebarOpenedAsync.data ? 0 : screenWidth - 45,
//           child: Row(
//             children: <Widget>[
//               Expanded(
//                 child: Container(
//                   // height: MediaQuery.of(context).size.height,
//                   // width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.centerLeft,
//                       end: Alignment.centerRight,
//                       colors: [Colors.indigoAccent[100], Colors.indigoAccent],
//                     ),
//                   ),
//                   child: Column(
//                     children: <Widget>[
//                       SizedBox(
//                         height:screenAwareSize(100, context) ,
//                       ),
//                       user(),
//                       Divider(
//                         height: screenAwareSize(75, context) ,
//                         thickness: 0.5,
//                         color: Colors.transparent,
//                         indent: 32,
//                         endIndent: 32,
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(horizontal:screenAwareSize(20, context)),
//                         child: Column(
//                           children: <Widget>[
//                              menu("Profile", Icons.person, "5627365r7236"),
//                             Divider(
//                               height:screenAwareSize(15, context) ,
//                               thickness: 1.5,
//                               color: Colors.indigoAccent[100],
//                               indent: 32,
//                               endIndent: 32,
//                             ),
//                             menu("People", Icons.people, "hold"),
//                             Divider(
//                               height:screenAwareSize(15, context) ,
//                               thickness: 1.5,
//                               color: Colors.indigoAccent[100],
//                               indent: 32,
//                               endIndent: 32,
//                             ),
//                             menu("Books", Icons.book, "hola"),
//                             Divider(
//                               height:screenAwareSize(15, context) ,
//                               thickness: 1.5,
//                               color: Colors.indigoAccent[100],
//                               indent: 32,
//                               endIndent: 32,
//                             ),
//                             menu("My Note", Icons.note_add, "hello"),
//                             Divider(
//                              height:screenAwareSize(15, context) ,
//                               thickness: 1.5,
//                               color: Colors.indigoAccent[100],
//                               indent: 32,
//                               endIndent: 32,
//                             ),
//                             menu("Photo", Icons.photo_library,
//                                 "vedvsdnuivshuvis"),
//                           Divider(
//                               height:screenAwareSize(15, context) ,
//                               thickness: 1.5,
//                               color: Colors.indigoAccent[100],
//                               indent: 32,
//                               endIndent: 32,
//                             ),
//                               //  Spacer(),
//                            menu("Photo", Icons.photo_library,
//                                 "vedvsdnuivshuvis"),
//                                 SizedBox(height:screenAwareSize(20, context))
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment(0, -0.4),
//                 child: GestureDetector(
//                   onTap: () {
//                     onIconPressed();
//                   },
//                   child: ClipPath(
//                     clipper: CustomMenuClipper(),
//                     child: Container(
//                       width: 35,
//                       height: 110,
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                             begin: Alignment.centerLeft,
//                             end: Alignment.centerRight,
//                             colors: [
//                               Colors.indigoAccent,
//                               Colors.indigoAccent[400]
//                             ]),
//                       ),
//                       alignment: Alignment.centerLeft,
//                       child: AnimatedIcon(
//                           icon: AnimatedIcons.menu_close,
//                           progress: _animationController.view,
//                           color: Colors.white,
//                           size: 25),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }

//   Container menu(text, icon, object) {
//     return Container(
//       padding: EdgeInsets.all(3),
//       child: GestureDetector(
//         onTap: () {
//           print(object);
//         },
//         child: ListTile(
//           title: Text(text,
//               style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.normal,
//                   fontSize: 20)),
//           leading: CircleAvatar (
//               child: Icon(icon,color:Colors.white), backgroundColor: Colors.indigoAccent),
//         ),
//       ),
//     );
//   }

//   Container user() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 12),
//       child: ListTile(
//         title: Text(
//           "User Name",
//           style: TextStyle(
//               color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
//         ),
//         subtitle: Text(
//           'example@gmail.com',
//           style: TextStyle(
//               color: Colors.indigo[100],
//               fontSize: 20,
//               fontWeight: FontWeight.normal),
//         ),
//         leading: CircleAvatar(
//           child: Icon(
//             Icons.perm_identity,
//             color: Colors.white,
//           ),
//           backgroundColor: Colors.indigoAccent,
//           radius: 40,
//         ),
//       ),
//     );
//   }
// }

// class CustomMenuClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Paint paint = Paint();
//     paint.color = Colors.indigoAccent;

//     final height = size.height;
//     final width = size.width;

//     Path path = Path();
//     path.moveTo(0, 0);
//     path.quadraticBezierTo(0, 8, 10, 16);
//     path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
//     path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
//     path.quadraticBezierTo(0, height - 8, 0, height);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => true;
// }
