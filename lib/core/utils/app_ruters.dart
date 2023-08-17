import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_book_app/core/utils/service_locator.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/repos/home_repo_impl.dart';
import '../../features/home/presentathion/view_model/related_books_cubit/related_books_cubit.dart';
import '../../features/home/presentathion/views/book_details_view.dart';
import '../../features/home/presentathion/views/home_view.dart';
import '../../features/search/prsentation/views/search_view..dart';
import '../../features/splash/presentation/views/splash_view.dart';
import '../data/models/book_model/book_model.dart';

abstract class AppRouters {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => RelatedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
