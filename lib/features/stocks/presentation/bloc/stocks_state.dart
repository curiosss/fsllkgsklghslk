import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_investment_app/features/stocks/domain/entities/stock.dart';

part 'stocks_state.freezed.dart';

@freezed
sealed class StocksState with _$StocksState {
  const factory StocksState.initial() = StocksInitial;
  const factory StocksState.loading() = StocksLoading;
  const factory StocksState.loaded({
    @Default([]) List<Stock> stocks,
    @Default(false) bool hasReachedMax,
    @Default(1) int page,
    @Default(0) int totalCount,
    String? search,
    String? country,
    bool? compliance,
  }) = StocksLoaded;
  const factory StocksState.error(String message) = StocksError;
}
