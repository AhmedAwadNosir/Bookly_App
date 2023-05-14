import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../Models/BookModel.dart';
import '../wedgits/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key,required this.book});
  static const id = "DescrptionView";
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return  BookDetailsViewBody(bookDetails: book,);
  }
}
