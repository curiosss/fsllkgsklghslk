import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_investment_app/features/stocks/data/models/price_model.dart';

part 'stock_model.freezed.dart';
part 'stock_model.g.dart';

@freezed
sealed class StockModel with _$StockModel {
  const factory StockModel({
    @Default(0) int id,
    @Default('') String companyName,
    @Default('') String tradingSymbol,
    @Default('') String logo,
    @Default('USD') String currency,
    @Default(false) bool isCompliant,
    @Default(PriceModel()) PriceModel price,
  }) = _StockModel;

  factory StockModel.fromJson(Map<String, dynamic> json) =>
      _$StockModelFromJson(json);
}
