
import 'package:dartz/dartz.dart';

import '../../../../core/data/models/book_model/book_model.dart';
import '../../../../core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchMainBooks();
  Future<Either<Failure, List<BookModel>>> fetchRelatedBooks(
      {required String category});
}