import 'package:dio/dio.dart';

import '../Models/BookModel.dart';

abstract class BookApiServices {
  static Future<List<BookModel>> featchFetureBooks() async {
    final dio = Dio();
    var response = await dio
        .get("https://www.googleapis.com/books/v1/volumes?q=novels");
    List<BookModel> books = parseData(response);
    return books;
  }

  static List<BookModel> parseData(Response<dynamic> response) {
    List<BookModel> books = [];
    var items = response.data["items"];
    for (var bookMap in items) {
      books.add(BookModel.fromjson(bookMap));
    }
    return books;
  }
}
