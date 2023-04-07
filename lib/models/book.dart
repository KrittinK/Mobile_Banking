class Book {
  final String? book_id;
  final String? book_name;
  final int? chapter;
  final int? verse;
  final String? text;

  Book({this.book_id, /*required*/ this.book_name, this.chapter, this.verse, this.text});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      book_id: json['book_id'], book_name: json['book_name'], chapter: json['chapter'], verse: json['verse'], text: json['text'],
      
    );}
}

