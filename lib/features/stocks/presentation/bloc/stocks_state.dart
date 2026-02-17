import 'package:equatable/equatable.dart';
import 'package:stock_investment_app/features/stocks/domain/entities/stock.dart';

abstract class StocksState extends Equatable {
  const StocksState();

  @override
  List<Object> get props => [];
}

class StocksInitial extends StocksState {}

class StocksLoading extends StocksState {}

class StocksLoaded extends StocksState {
  final List<Stock> stocks;
  final bool hasReachedMax;
  final int page;
  final String? search;
  final String? country;
  final bool? compliance;

  const StocksLoaded({
    this.stocks = const [],
    this.hasReachedMax = false,
    this.page = 1,
    this.search,
    this.country,
    this.compliance,
  });

  StocksLoaded copyWith({
    List<Stock>? stocks,
    bool? hasReachedMax,
    int? page,
    String? search,
    String? country,
    bool? compliance,
  }) {
    return StocksLoaded(
      stocks: stocks ?? this.stocks,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      page: page ?? this.page,
      search: search ?? this.search,
      country: country ?? this.country,
      compliance: compliance ?? this.compliance,
    );
  }

  @override
  List<Object> get props => [
    stocks,
    hasReachedMax,
    page,
    search ?? '',
    country ?? '',
    compliance ?? '',
  ];
}

class StocksError extends StocksState {
  final String message;

  const StocksError(this.message);

  @override
  List<Object> get props => [message];
}
