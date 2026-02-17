// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stocks_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StocksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search, String? country, bool? compliance)
        getStocks,
    required TResult Function() loadMore,
    required TResult Function(String query) search,
    required TResult Function(bool? compliance, String? country) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search, String? country, bool? compliance)?
        getStocks,
    TResult? Function()? loadMore,
    TResult? Function(String query)? search,
    TResult? Function(bool? compliance, String? country)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search, String? country, bool? compliance)?
        getStocks,
    TResult Function()? loadMore,
    TResult Function(String query)? search,
    TResult Function(bool? compliance, String? country)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetStocksEvent value) getStocks,
    required TResult Function(LoadMoreStocksEvent value) loadMore,
    required TResult Function(SearchStocksEvent value) search,
    required TResult Function(FilterStocksEvent value) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetStocksEvent value)? getStocks,
    TResult? Function(LoadMoreStocksEvent value)? loadMore,
    TResult? Function(SearchStocksEvent value)? search,
    TResult? Function(FilterStocksEvent value)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetStocksEvent value)? getStocks,
    TResult Function(LoadMoreStocksEvent value)? loadMore,
    TResult Function(SearchStocksEvent value)? search,
    TResult Function(FilterStocksEvent value)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StocksEventCopyWith<$Res> {
  factory $StocksEventCopyWith(
          StocksEvent value, $Res Function(StocksEvent) then) =
      _$StocksEventCopyWithImpl<$Res, StocksEvent>;
}

/// @nodoc
class _$StocksEventCopyWithImpl<$Res, $Val extends StocksEvent>
    implements $StocksEventCopyWith<$Res> {
  _$StocksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StocksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetStocksEventImplCopyWith<$Res> {
  factory _$$GetStocksEventImplCopyWith(_$GetStocksEventImpl value,
          $Res Function(_$GetStocksEventImpl) then) =
      __$$GetStocksEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? search, String? country, bool? compliance});
}

/// @nodoc
class __$$GetStocksEventImplCopyWithImpl<$Res>
    extends _$StocksEventCopyWithImpl<$Res, _$GetStocksEventImpl>
    implements _$$GetStocksEventImplCopyWith<$Res> {
  __$$GetStocksEventImplCopyWithImpl(
      _$GetStocksEventImpl _value, $Res Function(_$GetStocksEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of StocksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? country = freezed,
    Object? compliance = freezed,
  }) {
    return _then(_$GetStocksEventImpl(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      compliance: freezed == compliance
          ? _value.compliance
          : compliance // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$GetStocksEventImpl implements GetStocksEvent {
  const _$GetStocksEventImpl({this.search, this.country, this.compliance});

  @override
  final String? search;
  @override
  final String? country;
  @override
  final bool? compliance;

  @override
  String toString() {
    return 'StocksEvent.getStocks(search: $search, country: $country, compliance: $compliance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStocksEventImpl &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.compliance, compliance) ||
                other.compliance == compliance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search, country, compliance);

  /// Create a copy of StocksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStocksEventImplCopyWith<_$GetStocksEventImpl> get copyWith =>
      __$$GetStocksEventImplCopyWithImpl<_$GetStocksEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search, String? country, bool? compliance)
        getStocks,
    required TResult Function() loadMore,
    required TResult Function(String query) search,
    required TResult Function(bool? compliance, String? country) filter,
  }) {
    return getStocks(this.search, country, compliance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search, String? country, bool? compliance)?
        getStocks,
    TResult? Function()? loadMore,
    TResult? Function(String query)? search,
    TResult? Function(bool? compliance, String? country)? filter,
  }) {
    return getStocks?.call(this.search, country, compliance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search, String? country, bool? compliance)?
        getStocks,
    TResult Function()? loadMore,
    TResult Function(String query)? search,
    TResult Function(bool? compliance, String? country)? filter,
    required TResult orElse(),
  }) {
    if (getStocks != null) {
      return getStocks(this.search, country, compliance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetStocksEvent value) getStocks,
    required TResult Function(LoadMoreStocksEvent value) loadMore,
    required TResult Function(SearchStocksEvent value) search,
    required TResult Function(FilterStocksEvent value) filter,
  }) {
    return getStocks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetStocksEvent value)? getStocks,
    TResult? Function(LoadMoreStocksEvent value)? loadMore,
    TResult? Function(SearchStocksEvent value)? search,
    TResult? Function(FilterStocksEvent value)? filter,
  }) {
    return getStocks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetStocksEvent value)? getStocks,
    TResult Function(LoadMoreStocksEvent value)? loadMore,
    TResult Function(SearchStocksEvent value)? search,
    TResult Function(FilterStocksEvent value)? filter,
    required TResult orElse(),
  }) {
    if (getStocks != null) {
      return getStocks(this);
    }
    return orElse();
  }
}

abstract class GetStocksEvent implements StocksEvent {
  const factory GetStocksEvent(
      {final String? search,
      final String? country,
      final bool? compliance}) = _$GetStocksEventImpl;

  String? get search;
  String? get country;
  bool? get compliance;

  /// Create a copy of StocksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStocksEventImplCopyWith<_$GetStocksEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreStocksEventImplCopyWith<$Res> {
  factory _$$LoadMoreStocksEventImplCopyWith(_$LoadMoreStocksEventImpl value,
          $Res Function(_$LoadMoreStocksEventImpl) then) =
      __$$LoadMoreStocksEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreStocksEventImplCopyWithImpl<$Res>
    extends _$StocksEventCopyWithImpl<$Res, _$LoadMoreStocksEventImpl>
    implements _$$LoadMoreStocksEventImplCopyWith<$Res> {
  __$$LoadMoreStocksEventImplCopyWithImpl(_$LoadMoreStocksEventImpl _value,
      $Res Function(_$LoadMoreStocksEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of StocksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreStocksEventImpl implements LoadMoreStocksEvent {
  const _$LoadMoreStocksEventImpl();

  @override
  String toString() {
    return 'StocksEvent.loadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreStocksEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search, String? country, bool? compliance)
        getStocks,
    required TResult Function() loadMore,
    required TResult Function(String query) search,
    required TResult Function(bool? compliance, String? country) filter,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search, String? country, bool? compliance)?
        getStocks,
    TResult? Function()? loadMore,
    TResult? Function(String query)? search,
    TResult? Function(bool? compliance, String? country)? filter,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search, String? country, bool? compliance)?
        getStocks,
    TResult Function()? loadMore,
    TResult Function(String query)? search,
    TResult Function(bool? compliance, String? country)? filter,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetStocksEvent value) getStocks,
    required TResult Function(LoadMoreStocksEvent value) loadMore,
    required TResult Function(SearchStocksEvent value) search,
    required TResult Function(FilterStocksEvent value) filter,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetStocksEvent value)? getStocks,
    TResult? Function(LoadMoreStocksEvent value)? loadMore,
    TResult? Function(SearchStocksEvent value)? search,
    TResult? Function(FilterStocksEvent value)? filter,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetStocksEvent value)? getStocks,
    TResult Function(LoadMoreStocksEvent value)? loadMore,
    TResult Function(SearchStocksEvent value)? search,
    TResult Function(FilterStocksEvent value)? filter,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMoreStocksEvent implements StocksEvent {
  const factory LoadMoreStocksEvent() = _$LoadMoreStocksEventImpl;
}

/// @nodoc
abstract class _$$SearchStocksEventImplCopyWith<$Res> {
  factory _$$SearchStocksEventImplCopyWith(_$SearchStocksEventImpl value,
          $Res Function(_$SearchStocksEventImpl) then) =
      __$$SearchStocksEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchStocksEventImplCopyWithImpl<$Res>
    extends _$StocksEventCopyWithImpl<$Res, _$SearchStocksEventImpl>
    implements _$$SearchStocksEventImplCopyWith<$Res> {
  __$$SearchStocksEventImplCopyWithImpl(_$SearchStocksEventImpl _value,
      $Res Function(_$SearchStocksEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of StocksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchStocksEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStocksEventImpl implements SearchStocksEvent {
  const _$SearchStocksEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'StocksEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStocksEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of StocksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStocksEventImplCopyWith<_$SearchStocksEventImpl> get copyWith =>
      __$$SearchStocksEventImplCopyWithImpl<_$SearchStocksEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search, String? country, bool? compliance)
        getStocks,
    required TResult Function() loadMore,
    required TResult Function(String query) search,
    required TResult Function(bool? compliance, String? country) filter,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search, String? country, bool? compliance)?
        getStocks,
    TResult? Function()? loadMore,
    TResult? Function(String query)? search,
    TResult? Function(bool? compliance, String? country)? filter,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search, String? country, bool? compliance)?
        getStocks,
    TResult Function()? loadMore,
    TResult Function(String query)? search,
    TResult Function(bool? compliance, String? country)? filter,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetStocksEvent value) getStocks,
    required TResult Function(LoadMoreStocksEvent value) loadMore,
    required TResult Function(SearchStocksEvent value) search,
    required TResult Function(FilterStocksEvent value) filter,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetStocksEvent value)? getStocks,
    TResult? Function(LoadMoreStocksEvent value)? loadMore,
    TResult? Function(SearchStocksEvent value)? search,
    TResult? Function(FilterStocksEvent value)? filter,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetStocksEvent value)? getStocks,
    TResult Function(LoadMoreStocksEvent value)? loadMore,
    TResult Function(SearchStocksEvent value)? search,
    TResult Function(FilterStocksEvent value)? filter,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchStocksEvent implements StocksEvent {
  const factory SearchStocksEvent(final String query) = _$SearchStocksEventImpl;

  String get query;

  /// Create a copy of StocksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStocksEventImplCopyWith<_$SearchStocksEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterStocksEventImplCopyWith<$Res> {
  factory _$$FilterStocksEventImplCopyWith(_$FilterStocksEventImpl value,
          $Res Function(_$FilterStocksEventImpl) then) =
      __$$FilterStocksEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? compliance, String? country});
}

/// @nodoc
class __$$FilterStocksEventImplCopyWithImpl<$Res>
    extends _$StocksEventCopyWithImpl<$Res, _$FilterStocksEventImpl>
    implements _$$FilterStocksEventImplCopyWith<$Res> {
  __$$FilterStocksEventImplCopyWithImpl(_$FilterStocksEventImpl _value,
      $Res Function(_$FilterStocksEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of StocksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compliance = freezed,
    Object? country = freezed,
  }) {
    return _then(_$FilterStocksEventImpl(
      compliance: freezed == compliance
          ? _value.compliance
          : compliance // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FilterStocksEventImpl implements FilterStocksEvent {
  const _$FilterStocksEventImpl({this.compliance, this.country});

  @override
  final bool? compliance;
  @override
  final String? country;

  @override
  String toString() {
    return 'StocksEvent.filter(compliance: $compliance, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterStocksEventImpl &&
            (identical(other.compliance, compliance) ||
                other.compliance == compliance) &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, compliance, country);

  /// Create a copy of StocksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterStocksEventImplCopyWith<_$FilterStocksEventImpl> get copyWith =>
      __$$FilterStocksEventImplCopyWithImpl<_$FilterStocksEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search, String? country, bool? compliance)
        getStocks,
    required TResult Function() loadMore,
    required TResult Function(String query) search,
    required TResult Function(bool? compliance, String? country) filter,
  }) {
    return filter(compliance, country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search, String? country, bool? compliance)?
        getStocks,
    TResult? Function()? loadMore,
    TResult? Function(String query)? search,
    TResult? Function(bool? compliance, String? country)? filter,
  }) {
    return filter?.call(compliance, country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search, String? country, bool? compliance)?
        getStocks,
    TResult Function()? loadMore,
    TResult Function(String query)? search,
    TResult Function(bool? compliance, String? country)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(compliance, country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetStocksEvent value) getStocks,
    required TResult Function(LoadMoreStocksEvent value) loadMore,
    required TResult Function(SearchStocksEvent value) search,
    required TResult Function(FilterStocksEvent value) filter,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetStocksEvent value)? getStocks,
    TResult? Function(LoadMoreStocksEvent value)? loadMore,
    TResult? Function(SearchStocksEvent value)? search,
    TResult? Function(FilterStocksEvent value)? filter,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetStocksEvent value)? getStocks,
    TResult Function(LoadMoreStocksEvent value)? loadMore,
    TResult Function(SearchStocksEvent value)? search,
    TResult Function(FilterStocksEvent value)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class FilterStocksEvent implements StocksEvent {
  const factory FilterStocksEvent(
      {final bool? compliance,
      final String? country}) = _$FilterStocksEventImpl;

  bool? get compliance;
  String? get country;

  /// Create a copy of StocksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterStocksEventImplCopyWith<_$FilterStocksEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
