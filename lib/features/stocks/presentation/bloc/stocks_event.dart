import 'package:equatable/equatable.dart';

abstract class StocksEvent extends Equatable {
  const StocksEvent();

  @override
  List<Object> get props => [];
}

class GetStocksEvent extends StocksEvent {
  final int page;
  final String? search;
  final String? country;
  final bool? compliance;

  const GetStocksEvent({
    this.page = 1,
    this.search,
    this.country,
    this.compliance,
  });

  @override
  List<Object> get props => [
    page,
    search ?? '',
    country ?? '',
    compliance ?? '',
  ];
}

class LoadMoreStocksEvent extends StocksEvent {}

class SearchStocksEvent extends StocksEvent {
  final String query;
  const SearchStocksEvent(this.query);

  @override
  List<Object> get props => [query];
}

class FilterStocksEvent extends StocksEvent {
  final bool? compliance;
  final String? country;

  const FilterStocksEvent({this.compliance, this.country});

  @override
  List<Object> get props => [compliance ?? '', country ?? ''];
}
