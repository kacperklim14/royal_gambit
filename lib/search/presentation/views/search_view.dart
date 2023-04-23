import 'package:flutter/material.dart';
import 'package:royal_gambit/search/presentation/components/serach_card.dart';
import 'package:royal_gambit/search/presentation/controllers/search_bloc/bloc/search_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/services/service_locator.dart';
import '../components/dmpty_search.dart';
import '../components/loading_search.dart';
import '../components/no_result_search.dart';
import '../components/search_box.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => sl<SearchBloc>(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: SearchBox(),
              ),
              BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  switch (state.status) {
                    case SearchRequestStatus.empty:
                      return const EmptySearch();
                    case SearchRequestStatus.loading:
                      return const LoadingSearch();
                    case SearchRequestStatus.loaded:
                      return Expanded(
                        child: ListView.builder(
                            itemCount: state.searchResults.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: SearchCard(
                                    item: state.searchResults[index]),
                              );
                            }),
                      );

                    case SearchRequestStatus.error:
                      return const Text('BŁĄD POŁĄCZENIA');
                    case SearchRequestStatus.noResults:
                      return const NoResultSearch();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
