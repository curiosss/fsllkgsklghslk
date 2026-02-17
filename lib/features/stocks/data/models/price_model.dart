import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_model.freezed.dart';
part 'price_model.g.dart';

@freezed
sealed class PriceModel with _$PriceModel {
  const factory PriceModel({
    @Default(0.0) double price,
    @Default(0.0) double changePercent,
  }) = _PriceModel;

  factory PriceModel.fromJson(Map<String, dynamic> json) =>
      _$PriceModelFromJson(json);
}
