import 'package:flutter/material.dart';

import '../../../core/resources/app_colors.dart';

class ExpansionCategory extends StatelessWidget {
  final String name;
  final String count;
  const ExpansionCategory({
    required this.count,
    required this.name,
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
      child: ExpansionTile(
        title: Row(
          children: [
            Text(
              name.toUpperCase(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              width: 5,
            ),
            Chip(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              labelPadding: const EdgeInsets.symmetric(horizontal: 8),
              label: Text(
                count,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              backgroundColor: AppColors.border,
            ),
          ],
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(
            right: 10,
          ),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.border),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
              color: Colors.white,
            ),
            child: const Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Colors.black,
            ),
          ),
        ),
        children: [
          SizedBox(
            height: 272,
            child: DefaultTabController(
              length: 5,
              child: Column(
                children: [
                  TabBar(
                    isScrollable: true,
                    labelStyle: Theme.of(context).textTheme.titleMedium,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: AppColors.indicator,
                    tabs: [
                      Tab(text: 'Match Gewinner'.toUpperCase()),
                      Tab(
                          text: 'der Sieger der ersten Spielhälfte'
                              .toUpperCase()),
                      Tab(text: 'Gewinner des nächsten Satzes'.toUpperCase()),
                      Tab(text: 'następny gol'.toUpperCase()),
                      Tab(text: 'następny gol'.toUpperCase()),
                    ],
                  ),
                  const Expanded(
                    child: TabBarView(children: [
                      Text('karta'),
                      Text('karta'),
                      Text('karta'),
                      Text('karta'),
                      Text('karta'),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
