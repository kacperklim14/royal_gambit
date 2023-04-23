import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:royal_gambit/search/domain/usecases/search_usecase.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:equatable/equatable.dart';
import '../../../../data/models/search_result_item.dart';
part 'search_event.dart';
part 'search_state.dart';

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchUseCase _searchUseCase;

  SearchBloc(this._searchUseCase) : super(const SearchState()) {
    on<GetSearchResultsEvent>(_getSearchResults,
        transformer: debounce(
          const Duration(milliseconds: 200),
        ));
  }

  Future<void> _getSearchResults(
      GetSearchResultsEvent event, Emitter<SearchState> emit) async {
    if (event.name.length < 3) {
      return emit(
        state.copyWith(
          status: SearchRequestStatus.empty,
        ),
      );
    }
    emit(
      state.copyWith(
        status: SearchRequestStatus.loading,
      ),
    );

    final result = await _searchUseCase(event.name);
    result.fold(
      (l) => emit(
        state.copyWith(
          status: SearchRequestStatus.error,
          message: l.message,
        ),
      ),
      (r) {
        if (r.isEmpty) {
          emit(
            state.copyWith(
              status: SearchRequestStatus.noResults,
            ),
          );
        } else {
          emit(
            state.copyWith(
              status: SearchRequestStatus.loaded,
              searchResults: r,
            ),
          );
        }
      },
    );
  }
}
