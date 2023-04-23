import 'package:flutter/material.dart';

import '../../../core/resources/app_colors.dart';

class MenuSelector extends StatelessWidget {
  const MenuSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ItemMenu(name: 'OFERTA'),
                ItemMenu(name: 'MOJE', isSelected: true),
                ItemMenu(name: 'LIVE'),
                ItemMenu(name: 'HOT'),
                ItemMenu(name: 'CASHBACK'),
                ItemMenu(name: 'MEGA BOOST'),
                ItemMenu(name: 'TV'),
              ],
            ),
          ),
          Container(
            height: 45,
            width: 50,
            decoration: const BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: AppColors.border,
                ),
              ),
            ),
            child: const Icon(Icons.calendar_month),
          ),
        ],
      ),
    );
  }
}

class ItemMenu extends StatelessWidget {
  final String name;
  final bool isSelected;
  final Widget? icon;
  const ItemMenu({
    super.key,
    required this.name,
    this.isSelected = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: isSelected
            ? const Border(
                left: BorderSide(
                  color: AppColors.border,
                ),
                right: BorderSide(
                  color: AppColors.border,
                ),
                top: BorderSide(
                  color: AppColors.border,
                ))
            : const Border.symmetric(
                horizontal: BorderSide(
                  color: AppColors.border,
                ),
              ),
        color: !isSelected
            ? AppColors.greyBackground
            : AppColors.primaryBackground,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Row(
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              if (icon != null) icon!,
            ],
          ),
        ),
      ),
    );
  }
}
