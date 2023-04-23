import 'package:flutter/material.dart';
import 'package:royal_gambit/search/data/models/search_result_item.dart';
import 'package:intl/intl.dart';
import '../../../core/resources/app_colors.dart';

class SearchCard extends StatelessWidget {
  final SearchResultItem item;
  const SearchCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: AppColors.primaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      item.extras?.cATEGORYNAME3?.toUpperCase() ?? '-',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      item.eventStart != null
                          ? DateFormat('dd.MM')
                              .format(
                                DateTime.fromMillisecondsSinceEpoch(
                                    item.eventStart!),
                              )
                              .toString()
                          : '',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                          ),
                    )
                  ],
                ),
                Row(
                  children: const [
                    CustomChip(
                      icon: Icon(
                        Icons.tv,
                        size: 7,
                        color: Colors.white,
                      ),
                      label: 'TV',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CustomChip(
                      icon: Icon(
                        Icons.fireplace,
                        size: 7,
                        color: Colors.white,
                      ),
                      label: 'HOT',
                      color: AppColors.primary,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  item.eventStart != null
                      ? DateFormat('HH:mm')
                          .format(
                            DateTime.fromMillisecondsSinceEpoch(
                                item.eventStart!),
                          )
                          .toString()
                      : '',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(),
                )),
                Text(
                  '+36',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 8,
                        color: AppColors.primary,
                      ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name?.split('-').first ?? '',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      item.name?.split('-').last.replaceAll(' ', '') ?? '',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    )
                  ],
                ),
                Row(
                  children: const [
                    CourseContainer(
                      x: '1',
                      course: '1.25',
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    CourseContainer(
                      x: 'x',
                      course: '1.45',
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    CourseContainer(
                      x: '2',
                      course: '2.35',
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CourseContainer extends StatelessWidget {
  final String x;
  final String course;
  const CourseContainer({
    super.key,
    required this.x,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 49,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: const BorderRadius.all(
          Radius.circular(3),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            x,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 8,
                ),
          ),
          Text(
            course,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  final Color color;
  final Icon icon;
  final String label;
  const CustomChip({
    super.key,
    required this.label,
    required this.icon,
    this.color = AppColors.indicator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 3,
        ),
        child: Row(
          children: [
            icon,
            Text(
              label,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    fontSize: 6,
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
