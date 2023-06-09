import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Test());
  }
}


//  V1 By me
class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Container(
        height: 500,
        margin: const EdgeInsets.only(top: 90, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.black, width: 3.5),
              ),
              child: const Text(
                "Strawberry Pavlova Recipe",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                "Pavlova is a meringue-based dessert named after the Russian ballernia Anna Pavlova. Pavlova features a crisp crust and soft, light inside, stopped with fruit and whipped cream",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.5,
                  height: 1.5,
                ),
              ),
            ),
            Container(
              height: 160,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(Icons.star),
                          Icon(Icons.star),
                        ],
                      ),
                      const Text(
                        "17 review",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 300,
                    height: 110,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.restaurant,
                              size: 50,
                              color: Colors.green,
                            ),
                            Text("Feed", style: TextStyle(fontSize: 15)),
                            Text("2 - 4", style: TextStyle(fontSize: 15)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.category,
                              size: 50,
                              color: Colors.green,
                            ),
                            Text("Feed", style: TextStyle(fontSize: 15)),
                            Text("2 - 4", style: TextStyle(fontSize: 15)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.emoji_food_beverage,
                              size: 50,
                              color: Colors.green,
                            ),
                            Text("Feed", style: TextStyle(fontSize: 15)),
                            Text("2 - 4", style: TextStyle(fontSize: 15)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//  V2
// class Test extends StatelessWidget {
//   const Test({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       drawer: const Drawer(),
//       body: Container(
//         height: 500,
//         margin: const EdgeInsets.only(top: 120, left: 15, right: 15),
//         child: Column(
//           children: [
//             Container(
//               alignment: Alignment.center,
//               padding: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 border: Border.all(color: Colors.black, width: 3.5),
//               ),
//               child: const Text(
//                 "Strawberry Pavlova Recipe",
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             Container(
//               alignment: Alignment.center,
//               margin: const EdgeInsets.symmetric(vertical: 25),
//               child: const Text(
//                 "Pavlova is a meringue-based dessert named after the Russian ballernia Anna Pavlova. Pavlova features a crisp crust and soft, light inside, stopped with fruit and whipped cream",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 16.5,
//                   height: 1.5,
//                 ),
//               ),
//             ),
//             Container(
//               height: 190,
//               alignment: Alignment.center,
//               padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
//               decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black, width: 1)),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.only(right: 80),
//                         child: Row(
//                           children: const [
//                             Icon(
//                               Icons.star,
//                               color: Colors.yellow,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.yellow,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.yellow,
//                             ),
//                             Icon(Icons.star),
//                             Icon(Icons.star),
//                           ],
//                         ),
//                       ),
//                       const Text(
//                         "17 review",
//                         style: TextStyle(
//                           fontSize: 20,
//                         ),
//                       )
//                     ],
//                   ),
//                   // ignore: sized_box_for_whitespace
//                   Container(
//                     width: 300,
//                     height: 110,
//                     margin: const EdgeInsets.only(top: 25),
//                     child: Row(
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.only(right: 70),
//                           child: Column(
//                             children: const [
//                               Icon(
//                                 Icons.restaurant,
//                                 size: 50,
//                                 color: Colors.green,
//                               ),
//                               Text("\nFeed", style: TextStyle(fontSize: 15, height: 0.6)),
//                               Text("\n2 - 4", style: TextStyle(fontSize: 15, height: 0.6)),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           margin: const EdgeInsets.only(right: 70),
//                           child: Column(
//                             children: const [
//                               Icon(
//                                 Icons.category,
//                                 size: 50,
//                                 color: Colors.green,
//                               ),
//                               Text("\nFeed", style: TextStyle(fontSize: 15, height: 0.6)),
//                               Text("\n2 - 4", style: TextStyle(fontSize: 15, height: 0.6)),
//                             ],
//                           ),
//                         ),
//                         Column(
//                           children: const [
//                             Icon(
//                               Icons.emoji_food_beverage,
//                               size: 50,
//                               color: Colors.green,
//                             ),
//                             Text("\nFeed", style: TextStyle(fontSize: 15, height: 0.6)),
//                             Text("\n2 - 4", style: TextStyle(fontSize: 15, height: 0.6)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


