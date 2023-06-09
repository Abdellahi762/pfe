// ignore_for_file: no_logic_in_create_state, avoid_print, file_names

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // to remove debug banner
        debugShowCheckedModeBanner: false,
        home: Login());
  }
}

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var text = "Initial Text";
  bool rim = false;
  bool rim2 = false;
  String countryRadio = "";
  String cityRadio = "";
  bool onOff = false;

  List mobile = [
    {"name": "S22 Ultra", "screen": "6.2", "cpu": "8 core"},
    {"name": "S3 mini", "screen": "5.1", "cpu": "6 core"},
    {"name": "A12", "screen": "6.0", "cpu": "7 core"},
    {"name": "Grand Prime Plus", "screen": "5.0", "cpu": "5 core"},
    {"name": "iPhone x", "screen": "6.8", "cpu": "m2"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Library",
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                [
                  IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.alarm)),
                ];
              }),
          elevation: 100,
        ),
        // drawer: const Drawer(),
        body: Container(
          padding: EdgeInsets.all(10),
          // child: GridView.count(crossAxisCount: 1, children: [
          //   Container(
          //     alignment: Alignment.center,
          //     child: Text("C1"),
          //     color: Colors.amber,
          //   ),
          //   Container(
          //     alignment: Alignment.center,
          //     child: Text("C2"),
          //     color: Colors.yellow,
          //   ),
          //   Container(
          //     alignment: Alignment.center,
          //     child: Text("C3"),
          //     color: Colors.orange,
          //   ),
          //   Container(
          //     alignment: Alignment.center,
          //     child: Text("C4"),
          //     color: Colors.lime,
          //   ),
          //   Container(
          //     alignment: Alignment.center,
          //     child: Text("C5"),
          //     color: Colors.deepOrangeAccent,
          //   ),
          // ])

          // ListView(
          //     // scrollDirection: Axis.horizontal,
          //     children: List.generate(4, (i) {
          //       return Container(
          //         margin: EdgeInsets.all(10),
          //         child: Text("Container ${++i}"),
          //         color: Colors.amber,
          //         height: 200,
          //         width: 200,
          //       );
          //     }))

          // child: GridView(
          //   // scrollDirection: Axis.horizontal,
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2,
          //         mainAxisSpacing: 10,
          //         crossAxisSpacing: 10),
          //     children: List.generate(20, (i) {
          //       return Container(child: Text("Container ${++i}") , color: Colors.amber, height: 200, width: 200,);
          //     }))

          // ListView Vs ListView.builder => Loop
          // GridView Vs GridView.builder => Loop

          // child: GridView(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          //   children: [
          //     Container(
          //       child: Text("Container One"),
          //       height: 200,
          //       color: Colors.red,
          //     ),
          //     Container(
          //       child: Text("Container Two"),
          //       height: 200,
          //       color: Colors.green,
          //     ),
          //     Container(
          //       child: Text("Container Three"),
          //       height: 200,
          //       color: Colors.blue,
          //     ),
          //     Container(
          //       child: Text("Container Four"),
          //       height: 200,
          //       color: Colors.brown,
          //     ),
          //   ],
          // ),

          //     child: GridView.builder(
          //   itemCount: mobile.length,
          //   scrollDirection: Axis.vertical,
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5, childAspectRatio: 4),
          //   itemBuilder: (context, i) {
          //     return Container(
          //       color: Colors.amber,
          //       child: ListTile(
          //         title: Text("${mobile[i]["name"]}"),
          //         subtitle: Text("Screen: ${mobile[i]["screen"]}"),
          //         trailing: Text("${mobile[i]["cpu"]}"),
          //       ),
          //     );
          //   },
          // )

          // child: ListView.builder(
          // ListView.separated(
          //     separatorBuilder: (context, i) {
          //       return Divider(
          //         color: Colors.amber,
          //         height: 2,
          //         thickness: 2,
          //       );
          //     },
          //     itemCount: mobile.length,
          //     itemBuilder: (context, i) {
          //       return ListTile(
          //         title: Text("${mobile[i]["name"]}"),
          //         subtitle: Text("Screen: ${mobile[i]["screen"]}"),
          //         trailing: Text("${mobile[i]["cpu"]}"),
          //       );
          //       // Container(
          //       //   margin: EdgeInsets.symmetric(vertical: 5),
          //       //   height: 200,
          //       //   color: Colors.amber,
          //       //   alignment: Alignment.center,
          //       //   child: Text("$i"),
          //       // );
          //     }),
        )

        // ListView(
        // scrollDirection: Axis.vertical,
        // reverse: false,
        // padding: EdgeInsets.only(right: 40),
        // // physics: ClampingScrollPhysics(),
        // physics: BouncingScrollPhysics(),
        // // physics: NeverScrollableScrollPhysics(),
        // children: [
        //   Text(
        //     "Cars",
        //     style: TextStyle(
        //       fontSize: 30,
        //       backgroundColor: Colors.lightBlue,
        //     ),
        //   ),
        //   Container(
        //     height: 300,
        //     padding: EdgeInsets.only(bottom: 20),
        //     child: ListView(
        //       // physics: NeverScrollableScrollPhysics(),
        //       // shrinkWrap: true,
        //       children: [
        //         Container(
        //             color: Colors.indigoAccent,
        //             height: 170,
        //             child: const Text("Car 1: Toyota")),
        //         Container(
        //             color: Colors.amber,
        //             height: 170,
        //             child: const Text("Car 2: Mercedes")),
        //       ],
        //     ),
        //   ),
        //   Text(
        //     "Phones",
        //     style: TextStyle(
        //       fontSize: 30,
        //       backgroundColor: Colors.lightBlue,
        //     ),
        //   ),
        //   Container(
        //     height: 300,
        //     child: ListView(
        //       // physics: NeverScrollableScrollPhysics(),
        //       // shrinkWrap: true,
        //       children: [
        //         Container(
        //           child: Text("Phone 1: Samsung"),
        //           color: Colors.indigoAccent,
        //           height: 170,
        //           // width: 200,
        //         ),
        //         Container(
        //           child: Text("Phone 2: iPhone"),
        //           color: Colors.amber,
        //           height: 170,
        //         ),
        //       ],
        //     ),
        //   ),
        // ])

        // ElevatedButton(
        //   child: const Text("Show Error"),
        //   onPressed: () {
        //     showDialog(
        //         context: context,
        //         builder: (context) {
        //           return AlertDialog(
        //             title: const Text("Error"),
        //             // titlePadding: EdgeInsets.only(left: 30, top: 30),
        //             titleTextStyle: TextStyle(color: Colors.red),
        //             content: const Text("Error 404"),
        //             // contentPadding: EdgeInsets.only(left: 30, top: 30, bottom: 60),
        //             contentTextStyle:
        //                 TextStyle(color: Colors.red, fontSize: 15),
        //             backgroundColor: Colors.amber,

        //             // actionsPadding: EdgeInsets.all(10),
        //             actions: [
        //               TextButton(
        //                 child: const Text("OK"),
        //                 onPressed: () {
        //                   print("OK");
        //                 },
        //               ),
        //               TextButton(
        //                 child: const Text("Cancel"),
        //                 onPressed: () {
        //                   Navigator.of(context).pop();
        //                   print("Cancel");
        //                 },
        //               ),
        //             ],
        //           );
        //         });
        //   },
        // ),

        // CircleAvatar(
        //   backgroundImage: AssetImage("images/abdellahi762.jpg"),
        //   // backgroundColor: Colors.red,
        //   radius: 40,
        //   // child: const Text("Hi", style: TextStyle(fontSize: 35, color: Colors.black),),
        // ),

        // SwitchListTile(
        //     title: const Text("Dark Mode"),
        //     subtitle: Text(onOff == true ? "On" : "Off"),
        //     secondary: const Icon(Icons.dark_mode),
        //     activeColor: Colors.red,
        //     activeTrackColor: Colors.blue,
        //     inactiveThumbColor: Colors.black,
        //     inactiveTrackColor: Colors.green,
        //     value: onOff,
        //     onChanged: (val) {
        //       setState(() {
        //         onOff = val;
        //       });
        //     }),

        // ListTile(
        //   tileColor: Colors.orange,
        //   title: const Text("S22 Ultra"),
        //   subtitle: const Text("Samsung"),
        //   leading: const Icon(Icons.phone_android_rounded),
        //   trailing: const Text("1899\$"),
        //   onTap: () {
        //     print("pressed");
        //   },
        //   onLongPress: () {
        //     print("long pressed");
        //   },
        // ),

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     const Text("Dark Mode"),
        //     Switch(
        //       activeColor: Colors.red,
        //       activeTrackColor: Colors.blue,
        //       inactiveThumbColor: Colors.black,
        //       inactiveTrackColor: Colors.green,
        //         value: onOff,
        //         onChanged: (val) {
        //           setState(() {
        //             onOff = val;
        //           });
        //         })
        //   ],
        // ),

        // Text(
        //   "Choose Country",
        //   style: TextStyle(fontSize: 30),
        // ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     const Text("Mauritania"),
        //     Radio(
        //         activeColor: Colors.red,
        //         value: "rim",
        //         groupValue: countryRadio,
        //         onChanged: (val) {
        //           setState(() {
        //             countryRadio = val!;
        //           });
        //         })
        //   ],
        // ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     const Text("Moroco"),
        //     Radio(
        //         activeColor: Colors.red,
        //         value: "mrc",
        //         groupValue: countryRadio,
        //         onChanged: (val) {
        //           setState(() {
        //             countryRadio = val!;
        //           });
        //         })
        //   ],
        // ),
        // const Text(
        //   "Choose City",
        //   style: TextStyle(fontSize: 30),
        // ),
        // RadioListTile(
        //   controlAffinity: ListTileControlAffinity.trailing,
        //   secondary: const Icon(Icons.flag),
        //     selected: cityRadio == "Nktt" ? true : false,
        //     activeColor: Colors.red,
        //     title: const Text("Nouakchott"),
        //     subtitle: const Text("Mauritania"),
        //     value: "Nktt",
        //     groupValue: cityRadio,
        //     onChanged: (val) {
        //       setState(() {
        //         cityRadio = val!;
        //       });
        //     }),
        // RadioListTile(
        //   secondary: const Icon(Icons.flag),
        //     selected: cityRadio == "zt" ? true : false,
        //     activeColor: Colors.red,
        //     title: const Text("Zoueratte"),
        //     subtitle: const Text("Mauritania"),
        //     value: "zt",
        //     groupValue: cityRadio,
        //     onChanged: (val) {
        //       setState(() {
        //         cityRadio = val!;
        //         print(cityRadio);
        //       });
        //     }),
        // Checkbox(
        //   activeColor: Colors.blue,
        //   checkColor: Colors.white,
        //   value: rim,
        //   onChanged: (val) {
        //     setState(() {
        //       rim = val!;
        //     });
        //   },
        // ),
        // CheckboxListTile(
        //   title: const Text("Mauritania"),
        //   subtitle: const Text(
        //     "RIM",
        //     style: TextStyle(color: Colors.red),
        //   ),
        //   controlAffinity: ListTileControlAffinity.leading,
        //   secondary: const Icon(Icons.flag),
        //   isThreeLine: true,
        //   contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        //   activeColor: Colors.red,
        //   checkColor: Colors.white,
        //   selected: rim2,
        //   value: rim2,
        //   onChanged: (val) {
        //     setState(() {
        //       rim2 = val!;
        //     });
        //   },
        // ),

        // Center(
        //     child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text(text),
        //     ElevatedButton(
        //       onPressed: () {
        //         setState(() {
        //           text = "Text Changed";
        //         });
        //         print(text);
        //       },
        //       child: const Text("Click"),
        //     )
        //   ],
        // )),
        );
  }
}
