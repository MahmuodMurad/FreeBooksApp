
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_book_app/features/search/prsentation/views/widgets/search_view_body.dart';

import '../../../../core/utils/service_locator.dart';
import '../../data/repos/search_repo_impl.dart';
import '../view_model/search_cubit/search_cubit.dart';


class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => SearchCubit(
      getIt.get<SearchRepoImpl>(),
    ),
      child: const Scaffold(
        body: SafeArea(
          child: SearchViewBody(),
        ),
      ),
    );
  }
}