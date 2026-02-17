import 'package:freezed_annotation/freezed_annotation.dart';

part 'stocks_event.freezed.dart';

@freezed
sealed class StocksEvent with _$StocksEvent {
  const factory StocksEvent.getStocks({
    String? search,
    String? country,
    bool? compliance,
  }) = GetStocksEvent;

  const factory StocksEvent.loadMore() = LoadMoreStocksEvent;

  const factory StocksEvent.search(String query) = SearchStocksEvent;

  const factory StocksEvent.filter({
    bool? compliance,
    String? country,
  }) = FilterStocksEvent;
}
