import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock.freezed.dart';

@freezed
sealed class Stock with _$Stock {
  const factory Stock({
    required int id,
    required String companyName,
    required String tradingSymbol,
    required String logo,
    required String currency,
    required bool isCompliant,
    required double price,
    required double changePercent,
  }) = _Stock;
}
