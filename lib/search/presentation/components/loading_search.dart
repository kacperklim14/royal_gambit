import 'package:flutter/material.dart';

import '../../../core/resources/app_colors.dart';

class LoadingSearch extends StatelessWidget {
  const LoadingSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/looploop.png', fit: BoxFit.cover),
        const SizedBox(
          height: 10,
        ),
        Text(
          'DAJ NAM CHWILĘ',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 16),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'PRZESZUKUJEMY BAZĘ DANYCH',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.w600, color: AppColors.grey),
        ),
      ],
    );
  }
}
