import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'audio_screen.dart';
import 'models/categories_model.dart';
import 'models/books_model.dart';

class CategorieScreen extends StatelessWidget {
  const CategorieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Categorie categorie = Categorie.categories[0];
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.deepPurple.shade800, Colors.deepPurple.shade200],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text("Categories"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                _CategorieInformation(categorie: categorie),
                const SizedBox(
                  height: 30,
                ),
                // const _PlayOrShuffleSwich(),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: categorie.books.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text(
                        '${index + 1}',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      title: Text(
                        categorie.books[index].title,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Book selectedBook = categorie.books[index];
                        Get.to(const AudioScreen(), arguments: selectedBook);
                      },
                      subtitle: Text(
                          '${categorie.books[index].author} • ${categorie.books[index].language}'),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CategorieInformation extends StatelessWidget {
  const _CategorieInformation({
    required this.categorie,
  });

  final Categorie categorie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            categorie.imageUrl,
            height: 250,
            width: 250,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          categorie.title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}


// class _PlayOrShuffleSwich extends StatefulWidget {
//   const _PlayOrShuffleSwich();

//   @override
//   State<_PlayOrShuffleSwich> createState() => _PlayOrShuffleSwichState();
// }

// class _PlayOrShuffleSwichState extends State<_PlayOrShuffleSwich> {
//   bool isPlay = true;
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           isPlay = !isPlay;
//         });
//       },
//       child: Container(
//         width: width,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//         ),
//         height: 50,
//         child: Stack(
//           children: [
//             AnimatedPositioned(
//               duration: const Duration(milliseconds: 100),
//               left: isPlay ? 0 : width * 0.45,
//               child: Container(
//                 width: width * 0.45,
//                 height: 50,
//                 decoration: BoxDecoration(
//                   color: Colors.deepPurple.shade400,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//               ),
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Center(
//                         child: Text(
//                           "Play",
//                           style: TextStyle(
//                             color: isPlay ? Colors.white : Colors.deepPurple,
//                           ),
//                         ),
//                       ),
//                       Icon(
//                         Icons.play_circle,
//                         color: isPlay ? Colors.white : Colors.deepPurple,
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 Expanded(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Center(
//                         child: Text(
//                           "Shuffle",
//                           style: TextStyle(
//                             color: isPlay ? Colors.deepPurple : Colors.white,
//                           ),
//                         ),
//                       ),
//                       Icon(
//                         Icons.play_circle,
//                         color: isPlay ? Colors.deepPurple : Colors.white,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
