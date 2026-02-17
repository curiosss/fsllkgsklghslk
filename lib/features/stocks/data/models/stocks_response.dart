import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_investment_app/features/stocks/data/models/stock_model.dart';

part 'stocks_response.freezed.dart';
part 'stocks_response.g.dart';

@freezed
sealed class StocksResponse with _$StocksResponse {
  const factory StocksResponse({
    @Default([]) List<StockModel> data,
    @Default(MetaModel()) MetaModel meta,
  }) = _StocksResponse;

  factory StocksResponse.fromJson(Map<String, dynamic> json) =>
      _$StocksResponseFromJson(json);
}

@freezed
sealed class MetaModel with _$MetaModel {
  const factory MetaModel({
    @Default(0) int count,
  }) = _MetaModel;

  factory MetaModel.fromJson(Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);
}
