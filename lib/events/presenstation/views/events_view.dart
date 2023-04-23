import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/category_selector.dart';
import '../components/expansion_category.dart';
import '../components/menu_selector.dart';
import '../components/search.dart';
import 'package:go_router/go_router.dart';

class EventsView extends StatelessWidget {
  const EventsView({super.key});

  static const Map<String, int> mockCategory = {
    'piłka nożna': 124,
    'tenis': 12,
    'piłka ręczna': 12,
    'koszykówka': 2,
    'siatkówka': 1,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          InkWell(
              onTap: () {
                context.goNamed('search');
              },
              child: const Search()),
          const MenuSelector(),
          const CategorySelector(),
          Column(
            children: mockCategory.entries.map((entry) {
              return ExpansionCategory(
                name: entry.key,
                count: entry.value.toString(),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
