
import 'package:dartz/dartz.dart';

import '../../../../core/data/models/book_model/book_model.dart';
import '../../../../core/errors/failure.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks(String searchedText);
}