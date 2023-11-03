// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_api_error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WebApiErrorModel _$WebApiErrorModelFromJson(Map<String, dynamic> json) {
  return _WebApiErrorModel.fromJson(json);
}

/// @nodoc
mixin _$WebApiErrorModel {
  String get detail => throw _privateConstructorUsedError;
  Map<String, dynamic>? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebApiErrorModelCopyWith<WebApiErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebApiErrorModelCopyWith<$Res> {
  factory $WebApiErrorModelCopyWith(
          WebApiErrorModel value, $Res Function(WebApiErrorModel) then) =
      _$WebApiErrorModelCopyWithImpl<$Res, WebApiErrorModel>;
  @useResult
  $Res call({String detail, Map<String, dynamic>? errors});
}

/// @nodoc
class _$WebApiErrorModelCopyWithImpl<$Res, $Val extends WebApiErrorModel>
    implements $WebApiErrorModelCopyWith<$Res> {
  _$WebApiErrorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebApiErrorModelImplCopyWith<$Res>
    implements $WebApiErrorModelCopyWith<$Res> {
  factory _$$WebApiErrorModelImplCopyWith(_$WebApiErrorModelImpl value,
          $Res Function(_$WebApiErrorModelImpl) then) =
      __$$WebApiErrorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String detail, Map<String, dynamic>? errors});
}

/// @nodoc
class __$$WebApiErrorModelImplCopyWithImpl<$Res>
    extends _$WebApiErrorModelCopyWithImpl<$Res, _$WebApiErrorModelImpl>
    implements _$$WebApiErrorModelImplCopyWith<$Res> {
  __$$WebApiErrorModelImplCopyWithImpl(_$WebApiErrorModelImpl _value,
      $Res Function(_$WebApiErrorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? errors = freezed,
  }) {
    return _then(_$WebApiErrorModelImpl(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebApiErrorModelImpl extends _WebApiErrorModel {
  const _$WebApiErrorModelImpl(
      {this.detail = '', final Map<String, dynamic>? errors})
      : _errors = errors,
        super._();

  factory _$WebApiErrorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebApiErrorModelImplFromJson(json);

  @override
  @JsonKey()
  final String detail;
  final Map<String, dynamic>? _errors;
  @override
  Map<String, dynamic>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'WebApiErrorModel(detail: $detail, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebApiErrorModelImpl &&
            (identical(other.detail, detail) || other.detail == detail) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, detail, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebApiErrorModelImplCopyWith<_$WebApiErrorModelImpl> get copyWith =>
      __$$WebApiErrorModelImplCopyWithImpl<_$WebApiErrorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebApiErrorModelImplToJson(
      this,
    );
  }
}

abstract class _WebApiErrorModel extends WebApiErrorModel {
  const factory _WebApiErrorModel(
      {final String detail,
      final Map<String, dynamic>? errors}) = _$WebApiErrorModelImpl;
  const _WebApiErrorModel._() : super._();

  factory _WebApiErrorModel.fromJson(Map<String, dynamic> json) =
      _$WebApiErrorModelImpl.fromJson;

  @override
  String get detail;
  @override
  Map<String, dynamic>? get errors;
  @override
  @JsonKey(ignore: true)
  _$$WebApiErrorModelImplCopyWith<_$WebApiErrorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
