// ignore_for_file: deprecated_member_use, avoid_print, file_names
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // to remove debug banner
        debugShowCheckedModeBanner: false,
        home: Login0());
  }
}

class Login0 extends StatelessWidget {
  const Login0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // appBar: AppBar(),
        // drawer: const Drawer(),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: const Icon(Icons.add),
        //   backgroundColor: Colors.red,
        // ),
        // body: Center(
          // child: GestureDetector(
            // onTap: () {
            //   print("GestureDetector");
            // },
            // onTapDown: (tap) {
            //   print("Down");
            // },
            // onTapCancel: () {
            //   print("Cancel");
            // },
            // onTapUp: (tap) {
            //   print("Up");
            // },
            // onLongPress: () {
            //   print("Long Pressed");
            // },
            // onLongPressStart: (press) {print("Start");},
            // onLongPressEnd: (press) {print("End");},
          //   onDoubleTap: () {
          //     print("Double clicked");
          //   },
          //   child: Container(
          //     padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          //     decoration: BoxDecoration(
          //         color: Colors.red, borderRadius: BorderRadius.circular(20)),
          //     child: const Text("Add"),
          //   ),
          // ),
        // )

        // Container(
        //   color: Colors.yellow,
        //   child: Center(
        //       child: InkWell(
        //     child: Container(
        //       child: const Text("Add"), // As we added a text we can also add an image.
        //       width: 100,
        //       height: 50,
        //       alignment: Alignment.center,
        //       decoration: BoxDecoration(
        //           color: Colors.red, borderRadius: BorderRadius.circular(20)),
        //     ),
        //     onTap: () {
        //       print("object");
        //     },
        //   )),
        // )

        // Center(
        // MaterialButton(
        //   onPressed: () {},
        //   child: const Text("Button", style: TextStyle(fontSize: 20),),
        //   color: Colors.blue,
        //   textColor: Colors.white,
        //   height: 60,
        //   minWidth: 140,
        //   elevation: 10,
        //   splashColor: Colors.orange,
        //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

        // ),
        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //     primary: Colors.blue,
        //     onPrimary: Colors.white,
        //     padding: const EdgeInsets.all(10),
        //     elevation: 20,
        //     shadowColor: Colors.red,
        //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        //     minimumSize: const Size(70, 50),
        //     onSurface: Colors.red,
        //     textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        //   ),
        //   // onPressed: () => Fluttertoast.showToast(
        //   //   msg: 'ElevatedButton Clicked',
        //   //   fontSize: 18,
        //   // ),
        //   onLongPress: (){
        //     print("Long Pressed");
        //   },
        //   onPressed: () {
        //     // print("ElevatedButton");
        //   },
        //   child: const Text('ElevatedB'),
        // ),
        // )

        // Container(
        // child:
        //   margin: const EdgeInsets.only(top: 20),
        // Column(
        //       mainAxisSize: MainAxisSize.max,
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         ElevatedButton(
        //           style: ElevatedButton.styleFrom(
        //             minimumSize: const Size(70, 50),
        //             textStyle: const TextStyle(fontSize: 15),
        //             primary: Colors.blue,
        //             onPrimary: Colors.white,
        //           ),
        //           // onPressed: () => Fluttertoast.showToast(
        //           //   msg: 'ElevatedButton Clicked',
        //           //   fontSize: 18,
        //           // ),
        //           onPressed: () {
        //             // print("ElevatedButton");
        //           },
        //           child: const Text('ElevatedB'),
        //         ),
        //         OutlinedButton(
        //           style: OutlinedButton.styleFrom(
        //             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        //             minimumSize: const Size(70, 50),
        //             // minimumSize: const Size.fromWidth(10),
        //             textStyle: const TextStyle(fontSize: 15),
        //             primary: Colors.blue,
        //             // shape: const StadiumBorder(),
        //             side: const BorderSide(width: 2, color: Colors.blue),
        //           ),
        //           onPressed: () {
        //             // print("OutlinedButton");
        //           },
        //           child: const Text('OutlinedB'),
        //         ),
        // TextButton(
        //         style: TextButton.styleFrom(
        //           minimumSize: const Size(70, 50),
        //           textStyle: const TextStyle(fontSize: 15),
        //           primary: Colors.white,
        //           backgroundColor: Colors.black,

        //           /*padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        //           shape: const StadiumBorder(),
        //           side: const BorderSide(width: 2, color: Colors.blue),*/
        //         ),
        //         onPressed: () {
        //           // print("TextButton");
        //         },
        //         child: const Text('TextB'),
        //       ),
        //         IconButton(
        //           icon: const Icon(Icons.settings),
        //           iconSize: 60,
        //           onPressed: () {},
        //         ),
        //         ElevatedButton.icon(
        //           icon: const Text("ElevatedB.ico"),
        //           label: const Icon(Icons.settings),
        //           onPressed: () {},
        //         ),
        //       ]),
        // ),

        // const Center(
        // // color: Colors.red,
        // child: Text(
        //   "Hello World",
        //   style: TextStyle(fontSize: 30),
        // )),

        // SizedBox(
        //   child: Container(
        //     color: Colors.blue,
        //     alignment: Alignment.center,
        //     child: Row(
        //       children: const [Text("Hi"), Spacer(), Text("Mohamed")],
        //     ),
        //   ),
        //   height: 100,
        //   width: 100,
        // ),

        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       Container(
        //         margin: const EdgeInsets.all(10),
        //         color: Colors.red,
        //         width: 150,
        //         height: 100,
        //       ),
        //       Container(
        //         margin: const EdgeInsets.all(10),
        //         color: Colors.red,
        //         width: 150,
        //         height: 100,
        //       ),
        //       Container(
        //         margin: const EdgeInsets.all(10),
        //         color: Colors.red,
        //         width: 150,
        //         height: 100,
        //       ),
        //     ],
        //   ),
        // ),

        // Wrap(
        //   direction: Axis.horizontal,
        //   children: [
        //     Container(
        //       margin: const EdgeInsets.all(10),
        //       color: Colors.red,
        //       width: 90,
        //       height: 100,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(10),
        //       color: Colors.red,
        //       width: 90,
        //       height: 100,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(10),
        //       color: Colors.red,
        //       width: 90,
        //       height: 100,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(10),
        //       color: Colors.red,
        //       width: 90,
        //       height: 100,
        //     ),
        //   ],
        // ),

        // Container(
        //   padding: const EdgeInsets.symmetric(horizontal: 20),
        //   width: double.infinity,
        //   child: IndexedStack(
        //     index: 1,
        //     children: [
        //       Container(
        //         color: Colors.red,
        //         width: double.infinity,
        //         child: const Text("One",
        //             style: TextStyle(
        //               fontSize: 30,
        //             )),
        //       ),
        //       Container(
        //         color: Colors.blue,
        //         width: double.infinity,
        //         child: const Text("Two",
        //             style: TextStyle(
        //               fontSize: 30,
        //             )),
        //       ),
        //       Container(
        //         color: Colors.green,
        //         width: double.infinity,
        //         child: const Text("Three",
        //             style: TextStyle(
        //               fontSize: 30,
        //             )),
        //       ),
        //     ],
        //   ),
        // ),

        // Row(children: const [
        //   Text("First", style:TextStyle(color: Colors.red, fontSize: 30)),
        //   VerticalDivider(color: Colors.red, thickness: 3,),
        //   Text("Second ", style:TextStyle(color: Colors.green, fontSize: 30)),
        // ],),

        // Column(children: const [
        //   Text("First Line Of Code", style:TextStyle(color: Colors.red, fontSize: 30)),
        //   Divider(color: Colors.red, height: 50, thickness: 3,),
        //   Text("Second Line Of Code", style:TextStyle(color: Colors.green, fontSize: 30)),
        // ],)

        // Column(children: const [
        //   // https://api.flutter.dev/flutter/material/Icons-class.html
        //   Icon(Icons.wallet_travel, size: 50),
        //   Icon(Icons.person, size: 50),
        //   Icon(Icons.category, size: 50),
        //   Icon(Icons.html, size: 50),
        //   Icon(Icons.add_card_rounded,size: 50),
        // ],)

        // Column(
        //   children: [
        //     Expanded(
        //       flex: 2,
        //       child: Container(
        //           child: const Text("One", style: TextStyle(fontSize: 30,)),
        //           color: Colors.red,
        //           width: double.infinity),
        //     ),
        //     Expanded(
        //       child: Container(
        //           child: const Text("Two", style: TextStyle(fontSize: 30,)),
        //           color: Colors.blue,
        //           width: double.infinity),
        //     ),
        //     Expanded(
        //       flex: 3,
        //       child: Container(
        //           child: const Text("Three", style: TextStyle(fontSize: 30,)),
        //           color: Colors.green,
        //           width: double.infinity),
        //     ),
        //   ],
        // ),

        // Row(children: [
        //   Expanded(
        //     flex: 2,
        //     child: Container(
        //       child: const Text("Container 1"),
        //       color: Colors.red,
        //     ),
        //   ),
        //   Expanded(
        //     flex: 3,
        //     child: Container(
        //       child: const Text("Container 2"),
        //       color: Colors.green,
        //     ),
        //   ),
        //   Expanded(
        //     flex: 2,
        //     child: Container(
        //       child: const Text("Container 3"),
        //       color: Colors.blue,
        //     ),
        //   ),
        // ]),
        // Container(
        //   width: 400,
        //   height: 400,
        //   color: Colors.black,
        //   child: Stack(
        //     // alignment: Alignment.center,

        //     // ignore: deprecated_member_use
        //     // overflow: Overflow.visible,
        //     children: [
        //       Positioned(
        //         // width: 100,
        //         // height: 500,
        //         top: 0,
        //         bottom: 200,
        //         right: 100,
        //         left: 0,
        //         child: Container(
        //           color: Colors.red,
        //           child: const Text("Position 1"),
        //         ),
        //       ),
        //       Positioned(
        //         // width: 100,
        //         // height: 500,
        //         top: 100,
        //         bottom: 70,
        //         right: 100,
        //         left: 150,
        //         child: Container(
        //           color: Colors.green,
        //           child: const Text("Position 2"),
        //         ),
        //       ),
        //       // Container(
        //       //   color: Colors.red,
        //       //   width: 200,
        //       //   height: 200,
        //       //   child: const Text("Widget 1"),
        //       //   alignment: Alignment.bottomRight,
        //       // ),
        //       // Container(
        //       //   color: Colors.green,
        //       //   width: 100,
        //       //   height: 100,
        //       //   child: const Text("Widget 2"),
        //       //   alignment: Alignment.bottomRight,
        //       // ),
        //       // Container(
        //       //   color: Colors.yellow,
        //       //   width: 200,
        //       //   height: 200,
        //       //   child: const Text("Widget 3"),
        //       //   alignment: Alignment.bottomRight,
        //       // ),
        //     ],
        //   ),
        // ),
        // Container(
        //   color: Colors.red,
        //   width: double.infinity,
        //   height: 400,
        //   child: Row(
        //     mainAxisSize: MainAxisSize.min,
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center ,

        //     children: [
        //       const Text("You"),
        //       const Text("Are"),
        //       Container(
        //         color: Colors.blue,
        //         child: const Text("In")
        //       ),
        //       const Card(color: Colors.green, child: Text("Flutter Course"),),
        //       // Image.asset("images/cover.jpg")
        //     ],
        //   ),
        // child: Column(
        //   mainAxisSize: MainAxisSize.max,
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   crossAxisAlignment: CrossAxisAlignment.start,

        //   children: [
        //     const Text("How Are You"),
        //     const Text("How Are You 2"),
        //     Container(
        //       color: Colors.blue,
        //       child: const Text("Flutter Course")
        //     ),
        //     Image.asset("images/cover.jpg")
        //   ],
        // ),
        // ),

        // Card(
        //   color: Colors.blue,
        //   elevation: 10,
        //   shadowColor: Colors.red,
        //   // shape: Border.all(color: Colors.black, width: 10),
        //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: const BorderSide(color: Colors.black, width: 5)),
        //   child: const Text(
        //     "Hello",
        //     style: TextStyle(fontSize: 50),
        //   ),
        // )

        // Image.asset( "images/cover.jpg", width: 200, height: 200, fit: BoxFit.cover ),
        /*Container(
        // We can't use color if we use decoration in container instead let it in BoxDecoration
        // color: Colors.green,
        width: double.infinity,
        height: double.infinity,
        // margin: const EdgeInsets.only(top: 20, right: 20),
        // margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        // margin: const EdgeInsets.fromLTRB(10, 15, 20, 25),
        margin: const EdgeInsets.all(30),
        padding: const EdgeInsets.only(top: 20),
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(color: Colors.blue, width: 5),
          // border: const Border(right: BorderSide(color: Colors.red, width: 5), top: BorderSide(color: Colors.red, width: 8)),
          // borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
          borderRadius: BorderRadius.circular(10),
          // borderRadius: BorderRadius.all(Radius.circular(10)),
          // borderRadius: BorderRadius.horizontal(
          //   right: Radius.circular(10)
          // ),
          // borderRadius: BorderRadius.horizontal(
          //   left: Radius.circular(10)
          // ),
          // image: const DecorationImage(
          //   repeat: ImageRepeat.repeatY,
          //   fit: BoxFit.cover,
          //   // image: NetworkImage("https://i.ytimg.com/vi/gMd-hLgAYO8/oar2.jpg?sqp=-oaymwEaCJUDENAFSFXyq4qpAwwIARUAAIhCcAHAAQY=&rs=AOn4CLCiHYwsjxdT2q6tK7iF8y5kOz51ew")
          //   image: AssetImage("images/cover.jpg"),
          // ),
          boxShadow: const [ BoxShadow(
            color: Colors.black, blurRadius: 5, spreadRadius: 2, offset: Offset(-5, 5), 
          )],
        ),
        child: const Text("محمد عبدالله",
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            wordSpacing: 5,
            height: 1.4,
            // decoration: TextDecoration.underline,
            // backgroundColor: Colors.red,
            // shadows: [ Shadow(
            //     color: Colors.blue, blurRadius: 5, offset: Offset(-5, 5)
            //   )],
            ),
          ),
      ),*/
        );
  }
}
// // V1
// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         drawer: const Drawer(),
//         body: const Text("Hello World"),
//       ),
//     ),
//   );
// }



// // V2
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         drawer: const Drawer(),
//         body: const Text("Hello World 2"),
//       )
//     );
//   }
// }



// // V3
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: HomePage()
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       drawer: const Drawer(),
//       body: const Text("Hello World 3"),
//     );
//   }
// }


/*

adb tcpip 5555

adb connect 192.168.0.101

flutter devices

*/