// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  String get cityName => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  double get windSpeed => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this WeatherModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
    WeatherModel value,
    $Res Function(WeatherModel) then,
  ) = _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call({
    String cityName,
    double temperature,
    int humidity,
    double windSpeed,
    String main,
    String description,
    String icon,
  });
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? temperature = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(
      _value.copyWith(
            cityName:
                null == cityName
                    ? _value.cityName
                    : cityName // ignore: cast_nullable_to_non_nullable
                        as String,
            temperature:
                null == temperature
                    ? _value.temperature
                    : temperature // ignore: cast_nullable_to_non_nullable
                        as double,
            humidity:
                null == humidity
                    ? _value.humidity
                    : humidity // ignore: cast_nullable_to_non_nullable
                        as int,
            windSpeed:
                null == windSpeed
                    ? _value.windSpeed
                    : windSpeed // ignore: cast_nullable_to_non_nullable
                        as double,
            main:
                null == main
                    ? _value.main
                    : main // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            icon:
                null == icon
                    ? _value.icon
                    : icon // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
    _$WeatherModelImpl value,
    $Res Function(_$WeatherModelImpl) then,
  ) = __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String cityName,
    double temperature,
    int humidity,
    double windSpeed,
    String main,
    String description,
    String icon,
  });
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
    _$WeatherModelImpl _value,
    $Res Function(_$WeatherModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? temperature = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(
      _$WeatherModelImpl(
        cityName:
            null == cityName
                ? _value.cityName
                : cityName // ignore: cast_nullable_to_non_nullable
                    as String,
        temperature:
            null == temperature
                ? _value.temperature
                : temperature // ignore: cast_nullable_to_non_nullable
                    as double,
        humidity:
            null == humidity
                ? _value.humidity
                : humidity // ignore: cast_nullable_to_non_nullable
                    as int,
        windSpeed:
            null == windSpeed
                ? _value.windSpeed
                : windSpeed // ignore: cast_nullable_to_non_nullable
                    as double,
        main:
            null == main
                ? _value.main
                : main // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        icon:
            null == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl with DiagnosticableTreeMixin implements _WeatherModel {
  const _$WeatherModelImpl({
    required this.cityName,
    required this.temperature,
    required this.humidity,
    required this.windSpeed,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  @override
  final String cityName;
  @override
  final double temperature;
  @override
  final int humidity;
  @override
  final double windSpeed;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherModel(cityName: $cityName, temperature: $temperature, humidity: $humidity, windSpeed: $windSpeed, main: $main, description: $description, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherModel'))
      ..add(DiagnosticsProperty('cityName', cityName))
      ..add(DiagnosticsProperty('temperature', temperature))
      ..add(DiagnosticsProperty('humidity', humidity))
      ..add(DiagnosticsProperty('windSpeed', windSpeed))
      ..add(DiagnosticsProperty('main', main))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    cityName,
    temperature,
    humidity,
    windSpeed,
    main,
    description,
    icon,
  );

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(this);
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel({
    required final String cityName,
    required final double temperature,
    required final int humidity,
    required final double windSpeed,
    required final String main,
    required final String description,
    required final String icon,
  }) = _$WeatherModelImpl;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  String get cityName;
  @override
  double get temperature;
  @override
  int get humidity;
  @override
  double get windSpeed;
  @override
  String get main;
  @override
  String get description;
  @override
  String get icon;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
