import 'package:flutter/material.dart';

import '../../../core/resources/app_colors.dart';

class NoResultSearch extends StatelessWidget {
  const NoResultSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/warningwarning.png', fit: BoxFit.cover),
        const SizedBox(
          height: 10,
        ),
        Text(
          'BRAK WYNIKÓW',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 16),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'SPRÓBUJ INNEGO ZAPYTANIA',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.w600, color: AppColors.grey),
        ),
      ],
    );
  }
}
