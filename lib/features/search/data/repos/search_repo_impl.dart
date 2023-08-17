
import 'package:dartz/dartz.dart';

import 'package:dio/dio.dart';

import '../../../../core/data/models/book_model/book_model.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/utils/api_service.dart';
import 'search_repo.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks(String searchedText) async {
    try {
      var data = await apiService.get(
          endPoint:
          'volumes?q=${searchedText??'a'}');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}