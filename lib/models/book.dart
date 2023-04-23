class Book {
  final String? bookId;
  final String? bookName;
  final int? chapter;
  final int? verse;
  final String? text;

  Book(
      {this.bookId,
      /*required*/ this.bookName,
      this.chapter,
      this.verse,
      this.text});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      bookId: json['book_id'],
      bookName: json['book_name'],
      chapter: json['chapter'],
      verse: json['verse'],
      text: json['text'],
    );
  }
}
