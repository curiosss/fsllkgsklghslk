// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stocks_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StocksResponseImpl _$$StocksResponseImplFromJson(Map<String, dynamic> json) =>
    _$StocksResponseImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => StockModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: json['meta'] == null
          ? const MetaModel()
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StocksResponseImplToJson(
        _$StocksResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

_$MetaModelImpl _$$MetaModelImplFromJson(Map<String, dynamic> json) =>
    _$MetaModelImpl(
      count: (json['count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$MetaModelImplToJson(_$MetaModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
    };
