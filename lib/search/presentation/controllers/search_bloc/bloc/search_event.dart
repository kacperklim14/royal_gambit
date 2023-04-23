part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

class GetSearchResultsEvent extends SearchEvent {
  final String name;

  const GetSearchResultsEvent(this.name);

  @override
  List<Object?> get props => [name];
}
