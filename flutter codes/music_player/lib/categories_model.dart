import 'books_model.dart';

class Categorie {
  final String title;
  final List<Book> books;
  final String imageUrl;

  Categorie({required this.title, required this.books, required this.imageUrl});

  static List<Categorie> categories = [
    Categorie(
        title: 'التجارة والأعمال',
        books: Book.books,
        imageUrl: 'assets/images/cover1.png'),
    Categorie(
        title: 'التجارة والأعمال',
        books: Book.books,
        imageUrl: 'assets/images/cover1.png'),
    Categorie(
        title: 'التجارة والأعمال',
        books: Book.books,
        imageUrl: 'assets/images/cover1.png')
  ];
}
