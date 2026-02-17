// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Stock {
  int get id => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  String get tradingSymbol => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  bool get isCompliant => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get changePercent => throw _privateConstructorUsedError;

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockCopyWith<Stock> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockCopyWith<$Res> {
  factory $StockCopyWith(Stock value, $Res Function(Stock) then) =
      _$StockCopyWithImpl<$Res, Stock>;
  @useResult
  $Res call(
      {int id,
      String companyName,
      String tradingSymbol,
      String logo,
      String currency,
      bool isCompliant,
      double price,
      double changePercent});
}

/// @nodoc
class _$StockCopyWithImpl<$Res, $Val extends Stock>
    implements $StockCopyWith<$Res> {
  _$StockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyName = null,
    Object? tradingSymbol = null,
    Object? logo = null,
    Object? currency = null,
    Object? isCompliant = null,
    Object? price = null,
    Object? changePercent = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      tradingSymbol: null == tradingSymbol
          ? _value.tradingSymbol
          : tradingSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      isCompliant: null == isCompliant
          ? _value.isCompliant
          : isCompliant // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      changePercent: null == changePercent
          ? _value.changePercent
          : changePercent // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockImplCopyWith<$Res> implements $StockCopyWith<$Res> {
  factory _$$StockImplCopyWith(
          _$StockImpl value, $Res Function(_$StockImpl) then) =
      __$$StockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String companyName,
      String tradingSymbol,
      String logo,
      String currency,
      bool isCompliant,
      double price,
      double changePercent});
}

/// @nodoc
class __$$StockImplCopyWithImpl<$Res>
    extends _$StockCopyWithImpl<$Res, _$StockImpl>
    implements _$$StockImplCopyWith<$Res> {
  __$$StockImplCopyWithImpl(
      _$StockImpl _value, $Res Function(_$StockImpl) _then)
      : super(_value, _then);

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyName = null,
    Object? tradingSymbol = null,
    Object? logo = null,
    Object? currency = null,
    Object? isCompliant = null,
    Object? price = null,
    Object? changePercent = null,
  }) {
    return _then(_$StockImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      tradingSymbol: null == tradingSymbol
          ? _value.tradingSymbol
          : tradingSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      isCompliant: null == isCompliant
          ? _value.isCompliant
          : isCompliant // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      changePercent: null == changePercent
          ? _value.changePercent
          : changePercent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$StockImpl implements _Stock {
  const _$StockImpl(
      {required this.id,
      required this.companyName,
      required this.tradingSymbol,
      required this.logo,
      required this.currency,
      required this.isCompliant,
      required this.price,
      required this.changePercent});

  @override
  final int id;
  @override
  final String companyName;
  @override
  final String tradingSymbol;
  @override
  final String logo;
  @override
  final String currency;
  @override
  final bool isCompliant;
  @override
  final double price;
  @override
  final double changePercent;

  @override
  String toString() {
    return 'Stock(id: $id, companyName: $companyName, tradingSymbol: $tradingSymbol, logo: $logo, currency: $currency, isCompliant: $isCompliant, price: $price, changePercent: $changePercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.tradingSymbol, tradingSymbol) ||
                other.tradingSymbol == tradingSymbol) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.isCompliant, isCompliant) ||
                other.isCompliant == isCompliant) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.changePercent, changePercent) ||
                other.changePercent == changePercent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, companyName, tradingSymbol,
      logo, currency, isCompliant, price, changePercent);

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockImplCopyWith<_$StockImpl> get copyWith =>
      __$$StockImplCopyWithImpl<_$StockImpl>(this, _$identity);
}

abstract class _Stock implements Stock {
  const factory _Stock(
      {required final int id,
      required final String companyName,
      required final String tradingSymbol,
      required final String logo,
      required final String currency,
      required final bool isCompliant,
      required final double price,
      required final double changePercent}) = _$StockImpl;

  @override
  int get id;
  @override
  String get companyName;
  @override
  String get tradingSymbol;
  @override
  String get logo;
  @override
  String get currency;
  @override
  bool get isCompliant;
  @override
  double get price;
  @override
  double get changePercent;

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockImplCopyWith<_$StockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
