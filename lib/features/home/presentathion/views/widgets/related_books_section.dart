import 'package:flutter/material.dart';
import 'package:free_book_app/features/home/presentathion/views/widgets/related_books_list_view.dart';

import '../../../../../core/utils/styles.dart';

class RelatedBooksSection extends StatelessWidget {
  const RelatedBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Users also read',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const RelatedBooksListview(),
      ],
    );
  }
}