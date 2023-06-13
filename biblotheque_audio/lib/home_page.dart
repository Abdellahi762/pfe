import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'audio_screen.dart';
import 'models/books_model.dart';
import 'models/categories_model.dart';
import 'categories_screen.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // List<Book> books = Book.books;
    List<Categorie> categories = Categorie.categories;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.deepPurple.shade800, Colors.deepPurple.shade200],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: customAppBar(),
        bottomNavigationBar: const CustomNavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              DiscoverMusic(context: context),
              const TrendingBooks(),
              Categries(categories: categories)
            ],
          ),
        ),
      ),
    );
  }

  AppBar customAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Container(
        margin: const EdgeInsets.only(right: 20),
        child: Icon(
          Icons.local_library_rounded,
          color: Colors.blue.shade500,
          size: 35,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Déconnection",
                        style: TextStyle(color: Colors.black)),
                    content: const Text("Vouler vous déconnecter?",
                        style: TextStyle(color: Colors.black)),
                    actions: [
                      TextButton(
                        child: const Text("Déconnecter"),
                        onPressed: () {
                          logout();
                        },
                      ),
                    ],
                  );
                });
          },
          child: const Icon(
            Icons.logout_outlined,
            color: Colors.white,
            size: 35,
          ),
        ),
      ],
    );
  }

  Future<void> logout() async {
    final sharedPref = await SharedPreferences.getInstance();
    sharedPref.remove("UID");

    await FirebaseAuth.instance.signOut();
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const Login(),
      ),
    );
  }
}

class DiscoverMusic extends StatelessWidget {
  const DiscoverMusic({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Bien", style: TextStyle(fontSize: 14)),
          const SizedBox(
            height: 15,
          ),
          const Text("Enjoy your favorite music",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search',
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.grey.shade400),
              prefixIcon: Icon(Icons.search, color: Colors.grey.shade400),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurple.shade800,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline), label: 'Play'),
        ]);
  }
}

class Categries extends StatelessWidget {
  const Categries({
    super.key,
    required this.categories,
  });

  final List<Categorie> categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SectionHeader(title: 'Categories'),
          ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 20),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoriesCard(categorie: categories[index]);
            },
          ),
        ],
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key, required this.categorie});

  final Categorie categorie;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const CategorieScreen(), arguments: categorie);
      },
      child: Container(
        height: 75,
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.deepPurple.shade800.withOpacity(0.6),
            borderRadius: BorderRadius.circular(15.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                categorie.imageUrl,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    categorie.title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${categorie.books.length} books',
                    maxLines: 2,
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_circle,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}



// class TrendingBooks extends StatelessWidget {
//   const TrendingBooks({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
//       child: Column(
//         children: [
//           const Padding(
//             padding: EdgeInsets.only(right: 20.0),
//             child: SectionHeader(title: 'Trending Books'),
//           ),
//           const SizedBox(height: 20),
//           FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
//             future: FirebaseFirestore.instance.collection('Livres').get(),
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return const CircularProgressIndicator();
//               }
//               if (snapshot.hasError) {
//                 return Text('Error: ${snapshot.error}');
//               }
//               if (snapshot.data == null) {
//                 return const Text('No data available');
//               }
//               final books = snapshot.data!.docs.map((doc) {
//                 final data = doc.data();
//                 return Book(
//                   title: data['title'] ?? '',
//                   author: data['author'] ?? '',
//                   coverUrl: data['coverUrl'] ?? '',
//                 );
//               }).toList();

//               return SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.27,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: books.length,
//                   itemBuilder: (context, index) {
//                     return BookCard(book: books[index]);
//                   },
//                 ),
//               );
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
class TrendingBooks extends StatelessWidget {
  const TrendingBooks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: SectionHeader(title: 'Trending Books'),
          ),
          const SizedBox(height: 20),
          FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
            future: FirebaseFirestore.instance.collection('Livres').get(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
              if (snapshot.data == null) {
                return const Text('No data available');
              }
              final books = snapshot.data!.docs.map((doc) {
                final data = doc.data();
                return Book(
                  title: data['titre'] ?? '',
                  author: data['auteur'] ?? '',
                  coverUrl: data['couverture'] ?? '',
                  pdf: data['pdf'] ?? '',
                  audio: data['audio'] ?? '',
                );
              }).toList();

              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.27,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: books.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(const AudioScreen(), arguments: books[index]);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                image: DecorationImage(
                                  image: NetworkImage(books[index].coverUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: 55.0,
                              margin: const EdgeInsets.only(bottom: 10),
                              width:
                                  MediaQuery.of(context).size.width * 0.37,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white.withOpacity(0.9),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        books[index].title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                              color: Colors.deepPurple,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        books[index].author,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                              color: Colors.purple,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.play_circle,
                                    color: Colors.deepPurple,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
// class BookCard extends StatelessWidget {
//   const BookCard({
//     super.key,
//     required this.book,
//   });

//   final Book book;

//   @override
//   Widget build(BuildContext context) {
//     // ignore: avoid_print
//     print("-----------------------$book----------------------${book.getTitle}");
//     return InkWell(
//       onTap: () {
//         Get.to(const AudioScreen(), arguments: book);
//       },
//       child: Container(
//         margin: const EdgeInsets.only(right: 10),
//         child: Stack(
//           alignment: Alignment.bottomCenter,
//           children: [
//             Container(
//               width: MediaQuery.of(context).size.width * 0.45,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15.0),
//                 // image: DecorationImage(
//                 //   image: NetworkImage(book.coverUrl),
//                 //   fit: BoxFit.cover,
//                 // )
//               ),
//             ),
//             Container(
//               height: 55.0,
//               margin: const EdgeInsets.only(bottom: 10),
//               width: MediaQuery.of(context).size.width * 0.37,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15.0),
//                   color: Colors.white.withOpacity(0.9)),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         book.getTitle,
//                         style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//                               color: Colors.deepPurple,
//                               fontWeight: FontWeight.bold,
//                             ),
//                       ),
//                       Text(
//                         book.author,
//                         style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//                               color: Colors.purple,
//                               fontWeight: FontWeight.bold,
//                             ),
//                       ),
//                     ],
//                   ),
//                   const Icon(Icons.play_circle, color: Colors.deepPurple)
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25)),
      ],
    );
  }
}
