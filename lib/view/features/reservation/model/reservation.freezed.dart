// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReservationList _$ReservationListFromJson(Map<String, dynamic> json) {
  return _ReservationList.fromJson(json);
}

/// @nodoc
mixin _$ReservationList {
  Map<DateTime, List<Reservation>>? get reservationList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationListCopyWith<ReservationList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationListCopyWith<$Res> {
  factory $ReservationListCopyWith(
          ReservationList value, $Res Function(ReservationList) then) =
      _$ReservationListCopyWithImpl<$Res, ReservationList>;
  @useResult
  $Res call({Map<DateTime, List<Reservation>>? reservationList});
}

/// @nodoc
class _$ReservationListCopyWithImpl<$Res, $Val extends ReservationList>
    implements $ReservationListCopyWith<$Res> {
  _$ReservationListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservationList = freezed,
  }) {
    return _then(_value.copyWith(
      reservationList: freezed == reservationList
          ? _value.reservationList
          : reservationList // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<Reservation>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReservationListImplCopyWith<$Res>
    implements $ReservationListCopyWith<$Res> {
  factory _$$ReservationListImplCopyWith(_$ReservationListImpl value,
          $Res Function(_$ReservationListImpl) then) =
      __$$ReservationListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<DateTime, List<Reservation>>? reservationList});
}

/// @nodoc
class __$$ReservationListImplCopyWithImpl<$Res>
    extends _$ReservationListCopyWithImpl<$Res, _$ReservationListImpl>
    implements _$$ReservationListImplCopyWith<$Res> {
  __$$ReservationListImplCopyWithImpl(
      _$ReservationListImpl _value, $Res Function(_$ReservationListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservationList = freezed,
  }) {
    return _then(_$ReservationListImpl(
      reservationList: freezed == reservationList
          ? _value._reservationList
          : reservationList // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<Reservation>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReservationListImpl implements _ReservationList {
  const _$ReservationListImpl(
      {final Map<DateTime, List<Reservation>>? reservationList})
      : _reservationList = reservationList;

  factory _$ReservationListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationListImplFromJson(json);

  final Map<DateTime, List<Reservation>>? _reservationList;
  @override
  Map<DateTime, List<Reservation>>? get reservationList {
    final value = _reservationList;
    if (value == null) return null;
    if (_reservationList is EqualUnmodifiableMapView) return _reservationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ReservationList(reservationList: $reservationList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationListImpl &&
            const DeepCollectionEquality()
                .equals(other._reservationList, _reservationList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reservationList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationListImplCopyWith<_$ReservationListImpl> get copyWith =>
      __$$ReservationListImplCopyWithImpl<_$ReservationListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationListImplToJson(
      this,
    );
  }
}

abstract class _ReservationList implements ReservationList {
  const factory _ReservationList(
          {final Map<DateTime, List<Reservation>>? reservationList}) =
      _$ReservationListImpl;

  factory _ReservationList.fromJson(Map<String, dynamic> json) =
      _$ReservationListImpl.fromJson;

  @override
  Map<DateTime, List<Reservation>>? get reservationList;
  @override
  @JsonKey(ignore: true)
  _$$ReservationListImplCopyWith<_$ReservationListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Reservation _$ReservationFromJson(Map<String, dynamic> json) {
  return _Reservation.fromJson(json);
}

/// @nodoc
mixin _$Reservation {
  String get customerId => throw _privateConstructorUsedError;
  DateTime get reservationDate => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationCopyWith<Reservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationCopyWith<$Res> {
  factory $ReservationCopyWith(
          Reservation value, $Res Function(Reservation) then) =
      _$ReservationCopyWithImpl<$Res, Reservation>;
  @useResult
  $Res call(
      {String customerId,
      DateTime reservationDate,
      String customerName,
      String email});
}

/// @nodoc
class _$ReservationCopyWithImpl<$Res, $Val extends Reservation>
    implements $ReservationCopyWith<$Res> {
  _$ReservationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? reservationDate = null,
    Object? customerName = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      reservationDate: null == reservationDate
          ? _value.reservationDate
          : reservationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReservationImplCopyWith<$Res>
    implements $ReservationCopyWith<$Res> {
  factory _$$ReservationImplCopyWith(
          _$ReservationImpl value, $Res Function(_$ReservationImpl) then) =
      __$$ReservationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String customerId,
      DateTime reservationDate,
      String customerName,
      String email});
}

/// @nodoc
class __$$ReservationImplCopyWithImpl<$Res>
    extends _$ReservationCopyWithImpl<$Res, _$ReservationImpl>
    implements _$$ReservationImplCopyWith<$Res> {
  __$$ReservationImplCopyWithImpl(
      _$ReservationImpl _value, $Res Function(_$ReservationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? reservationDate = null,
    Object? customerName = null,
    Object? email = null,
  }) {
    return _then(_$ReservationImpl(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      reservationDate: null == reservationDate
          ? _value.reservationDate
          : reservationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReservationImpl implements _Reservation {
  const _$ReservationImpl(
      {required this.customerId,
      required this.reservationDate,
      required this.customerName,
      required this.email});

  factory _$ReservationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationImplFromJson(json);

  @override
  final String customerId;
  @override
  final DateTime reservationDate;
  @override
  final String customerName;
  @override
  final String email;

  @override
  String toString() {
    return 'Reservation(customerId: $customerId, reservationDate: $reservationDate, customerName: $customerName, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.reservationDate, reservationDate) ||
                other.reservationDate == reservationDate) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, customerId, reservationDate, customerName, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationImplCopyWith<_$ReservationImpl> get copyWith =>
      __$$ReservationImplCopyWithImpl<_$ReservationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationImplToJson(
      this,
    );
  }
}

abstract class _Reservation implements Reservation {
  const factory _Reservation(
      {required final String customerId,
      required final DateTime reservationDate,
      required final String customerName,
      required final String email}) = _$ReservationImpl;

  factory _Reservation.fromJson(Map<String, dynamic> json) =
      _$ReservationImpl.fromJson;

  @override
  String get customerId;
  @override
  DateTime get reservationDate;
  @override
  String get customerName;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$ReservationImplCopyWith<_$ReservationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
