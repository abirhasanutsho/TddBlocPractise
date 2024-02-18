


import 'package:equatable/equatable.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

class GetSearchResultsEvent extends SearchEvent {

  const GetSearchResultsEvent();

  @override
  List<Object?> get props => [];

}