class Book {
  final String title;
  final String author;
  final String language;
  final String url;
  final String coverUrl;

  Book({
    required this.title,
    required this.author,
    required this.language,
    required this.url,
    required this.coverUrl
  });

  static List<Book> books = [
    Book(
      title: 'الحافز',
      author: 'Daniel Pink',
      language: 'Arabic',
      url: 'assets/audio/al7afez.mp3',
      coverUrl: 'assets/images/al7afez.jpg'
    ),
    Book(
      title: 'قوة العادات',
      author: 'Charles Duhigg',
      language: 'Arabic',  
      url: 'assets/audio/el3adat.mp3',
      coverUrl: 'assets/images/el3adat.jpg'
    ),
    Book(
      title: 'فن اللامبالاة',
      author: 'Mark Manson',
      language: 'Arabic',
      url: 'assets/audio/Fan-almobalah.mp3',
      coverUrl: 'assets/images/Fan-almobalah.jpg'
    )
  ];
}
