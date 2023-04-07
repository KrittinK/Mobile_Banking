import 'package:flutter_template/services/get_book_data_service.dart';

class ProfileController {
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
      if (book.book_id == bookId) return book.book_name;
    }
  
    return bookId;
  }
}
