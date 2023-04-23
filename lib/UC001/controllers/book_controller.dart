import 'package:flutter_template/services/get_book_data.dart';

class BookController {
  // Future<String?> getBookId() async {
  //   final bookData = await GetBookDataService().getbookdata();
  //   final bookId = bookData.book_id;

  //   return bookId;
  // }

  Future<String?> getBookId({
    required String bookId,
  }) async {
    final bookDataList = await GetBookDataService().getbookdata();

    for (final book in bookDataList) {
      if (book.bookId == bookId) return book.bookName;
    }

    return bookId;
  }
}
