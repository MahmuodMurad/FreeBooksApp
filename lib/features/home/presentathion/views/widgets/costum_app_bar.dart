import 'package:flutter/material.dart';
import 'package:free_book_app/core/utils/app_ruters.dart';
import 'package:free_book_app/core/utils/assets/asset_images.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            AssetsManager.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouters.kSearchView);
            },
            icon: const Icon(
              Icons.search,
              size: 22,
            ),
          ),
        ],
      ),
    );
    ;
  }
}
