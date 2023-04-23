import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/search_bloc/bloc/search_bloc.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        // width: 335,
        height: 55,
        child: TextField(
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.w600),
          decoration: const InputDecoration(
            prefixIcon: SizedBox(
              width: 24,
              height: 24,
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
          onChanged: (name) {
            //sl<SearchBloc>().add(GetSearchResultsEvent(name));
            context.read<SearchBloc>().add(GetSearchResultsEvent(name));
          },
        ),
      ),
    );
  }
}
