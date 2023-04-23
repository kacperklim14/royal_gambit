import 'package:flutter/material.dart';

import '../../../core/resources/app_colors.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.border),
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          color: Colors.white,
        ),
        child: SizedBox(
          height: 37,
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Icon(
                  Icons.search,
                  color: AppColors.grey,
                ),
              ),
              Text(
                'CZEGO SZUKASZ',
                style: Theme.of(context)
                    .textTheme
                    .copyWith(
                      titleMedium: const TextStyle(color: AppColors.grey),
                    )
                    .titleMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
