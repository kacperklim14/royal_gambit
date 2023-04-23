import 'package:flutter/material.dart';
import 'package:royal_gambit/core/resources/app_colors.dart';

class CategorySelector extends StatelessWidget {
  const CategorySelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.border,
          ),
        ),
      ),
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.menu_sharp),
                ),
                CategoryItem(
                  name: 'wszystko',
                  count: '123',
                  isSelected: true,
                ),
                CategoryItem(
                  name: 'piłka nożna',
                  count: '1234',
                ),
                CategoryItem(
                  name: 'koszykówka',
                  count: '123',
                ),
                CategoryItem(
                  name: 'pojutrze',
                  count: '123',
                ),
                CategoryItem(
                  name: 'poniedziałek',
                  count: '123',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String name;
  final String count;
  final bool isSelected;
  const CategoryItem({
    required this.count,
    required this.name,
    this.isSelected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
      ),
      child: Chip(
        //labelPadding: EdgeInsets.symmetric(vertical: 9, horizontal: 10),
        backgroundColor: isSelected ? AppColors.border : null,
        label: Row(
          children: [
            Text(
              name.toUpperCase(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              count,
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}
