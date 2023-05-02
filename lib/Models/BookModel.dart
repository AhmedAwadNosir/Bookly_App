import 'package:flutter/material.dart';

class BookModel {
  final String? image;
  final String? headline;
  final String? author;
  final num? price;
  final num? rating;
  final int? ratingCount;

  BookModel({
    this.image,
    @required required this.headline,
    @required this.author,
    @required this.price,
    @required this.rating,
    @required this.ratingCount,
  });
  factory BookModel.fromjson(dynamic jsonData) {
    return BookModel(
      image: jsonData['volumeInfo']['imageLinks']?['thumbnail'],
      headline: jsonData["volumeInfo"]["title"],
      author: jsonData["volumeInfo"]["authors"][0],
      price: jsonData["volumeInfo"]["listPrice"]?["amount"],
      rating: jsonData["volumeInfo"]["averageRating"],
      ratingCount: jsonData['volumeInfo']['ratingsCount'],
    );
  }
}
