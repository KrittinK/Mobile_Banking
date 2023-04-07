// import 'dart:convert';

// import 'package:flutter_template/models/book.dart';
// import 'package:http/http.dart' as http;

// class GetBookDataService {
//   Future<Book> getbookdata() async {
//     final response = await http.get(Uri.parse('https://bible-api.com/john 3:16'));
//     if (response.statusCode == 200) {
//       final data = response.body;
//       final jsonData = jsonDecode(data);
//       final bookData = Book.fromJson(jsonData['verses'][0]);

//       return bookData;
//     } else {
//       throw Exception('Failed to load album');
//     }
//   }
// }

import 'dart:convert';

import 'package:flutter_template/models/book.dart';
import 'package:http/http.dart' as http;

class GetBookDataService {
  Future<List<Book>> getbookdata() async {
    final response = await http.get(Uri.parse('https://bible-api.com/john 3:16'));
    if (response.statusCode == 200) {
      final data = response.body;
      final jsonData = jsonDecode(data);
      // print(jsonData['verses']);

      final List<Book> bookDataList = jsonData['verses'].map<Book>((book) => Book.fromJson(book)).toList();

      final bookDataList3 = [Book(book_id: '1'), Book(book_id: '2'), Book(book_id: '3')];

      // List<Book> bookDataList2 = [];
      // for (final book in jsonData['verses']) {
      //   bookDataList2.add(Book.fromJson(book));
      // }

      return bookDataList;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
