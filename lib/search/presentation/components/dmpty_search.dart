import 'package:flutter/material.dart';

import '../../../core/resources/app_colors.dart';

class EmptySearch extends StatelessWidget {
  const EmptySearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('POLECANE:', style: Theme.of(context).textTheme.titleLarge),
            Text(
              'POKAŻ WSZYSTKIE',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: AppColors.primary),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/group9055.png', fit: BoxFit.cover),
            Image.asset('assets/group9056.png', fit: BoxFit.cover),
            Image.asset('assets/group9060.png', fit: BoxFit.cover),
            Image.asset('assets/group9059typer_zero.png', fit: BoxFit.cover),
            Image.asset('assets/group9058no_risk.png', fit: BoxFit.cover),
          ],
        )
      ],
    );
  }
}
