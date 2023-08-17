
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/data/models/book_model/book_model.dart';
import '../../../data/repos/search_repo.dart';
part  'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitial());

  final SearchRepo homeRepo;
  Future<void> fetchSearch(String searchedText) async {
    emit(SearchLoading());
    var result = await homeRepo.fetchSearchedBooks(searchedText);
    result.fold((failure) {
      emit(SearchFailure(failure.errMessage));
    }, (books) {
      emit(SearchSuccess(books));
    });
  }
}