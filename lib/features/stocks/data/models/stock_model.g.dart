// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockModelImpl _$$StockModelImplFromJson(Map<String, dynamic> json) =>
    _$StockModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      companyName: json['companyName'] as String? ?? '',
      tradingSymbol: json['tradingSymbol'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      currency: json['currency'] as String? ?? 'USD',
      isCompliant: json['isCompliant'] as bool? ?? false,
      price: json['price'] == null
          ? const PriceModel()
          : PriceModel.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StockModelImplToJson(_$StockModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyName': instance.companyName,
      'tradingSymbol': instance.tradingSymbol,
      'logo': instance.logo,
      'currency': instance.currency,
      'isCompliant': instance.isCompliant,
      'price': instance.price,
    };
