// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  BuildContext? get context => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get passWord => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext? context, String? userName,
            String? passWord, String? url)
        signInApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext? context, String? userName, String? passWord,
            String? url)?
        signInApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext? context, String? userName, String? passWord,
            String? url)?
        signInApi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInApi value) signInApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInApi value)? signInApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInApi value)? signInApi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInEventCopyWith<SignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
  @useResult
  $Res call(
      {BuildContext? context, String? userName, String? passWord, String? url});
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = freezed,
    Object? userName = freezed,
    Object? passWord = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      passWord: freezed == passWord
          ? _value.passWord
          : passWord // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInApiImplCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory _$$SignInApiImplCopyWith(
          _$SignInApiImpl value, $Res Function(_$SignInApiImpl) then) =
      __$$SignInApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BuildContext? context, String? userName, String? passWord, String? url});
}

/// @nodoc
class __$$SignInApiImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInApiImpl>
    implements _$$SignInApiImplCopyWith<$Res> {
  __$$SignInApiImplCopyWithImpl(
      _$SignInApiImpl _value, $Res Function(_$SignInApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = freezed,
    Object? userName = freezed,
    Object? passWord = freezed,
    Object? url = freezed,
  }) {
    return _then(_$SignInApiImpl(
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      passWord: freezed == passWord
          ? _value.passWord
          : passWord // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignInApiImpl implements SignInApi {
  const _$SignInApiImpl({this.context, this.userName, this.passWord, this.url});

  @override
  final BuildContext? context;
  @override
  final String? userName;
  @override
  final String? passWord;
  @override
  final String? url;

  @override
  String toString() {
    return 'SignInEvent.signInApi(context: $context, userName: $userName, passWord: $passWord, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInApiImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.passWord, passWord) ||
                other.passWord == passWord) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, userName, passWord, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInApiImplCopyWith<_$SignInApiImpl> get copyWith =>
      __$$SignInApiImplCopyWithImpl<_$SignInApiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext? context, String? userName,
            String? passWord, String? url)
        signInApi,
  }) {
    return signInApi(context, userName, passWord, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext? context, String? userName, String? passWord,
            String? url)?
        signInApi,
  }) {
    return signInApi?.call(context, userName, passWord, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext? context, String? userName, String? passWord,
            String? url)?
        signInApi,
    required TResult orElse(),
  }) {
    if (signInApi != null) {
      return signInApi(context, userName, passWord, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInApi value) signInApi,
  }) {
    return signInApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInApi value)? signInApi,
  }) {
    return signInApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInApi value)? signInApi,
    required TResult orElse(),
  }) {
    if (signInApi != null) {
      return signInApi(this);
    }
    return orElse();
  }
}

abstract class SignInApi implements SignInEvent {
  const factory SignInApi(
      {final BuildContext? context,
      final String? userName,
      final String? passWord,
      final String? url}) = _$SignInApiImpl;

  @override
  BuildContext? get context;
  @override
  String? get userName;
  @override
  String? get passWord;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$SignInApiImplCopyWith<_$SignInApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
  LoginModel? get loginModel => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call({LoginModel? loginModel, String? url});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginModel = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      loginModel: freezed == loginModel
          ? _value.loginModel
          : loginModel // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInStateImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateImplCopyWith(
          _$SignInStateImpl value, $Res Function(_$SignInStateImpl) then) =
      __$$SignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginModel? loginModel, String? url});
}

/// @nodoc
class __$$SignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateImpl>
    implements _$$SignInStateImplCopyWith<$Res> {
  __$$SignInStateImplCopyWithImpl(
      _$SignInStateImpl _value, $Res Function(_$SignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginModel = freezed,
    Object? url = freezed,
  }) {
    return _then(_$SignInStateImpl(
      loginModel: freezed == loginModel
          ? _value.loginModel
          : loginModel // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignInStateImpl implements _SignInState {
  const _$SignInStateImpl({this.loginModel, this.url});

  @override
  final LoginModel? loginModel;
  @override
  final String? url;

  @override
  String toString() {
    return 'SignInState(loginModel: $loginModel, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateImpl &&
            (identical(other.loginModel, loginModel) ||
                other.loginModel == loginModel) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginModel, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      __$$SignInStateImplCopyWithImpl<_$SignInStateImpl>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {final LoginModel? loginModel, final String? url}) = _$SignInStateImpl;

  @override
  LoginModel? get loginModel;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
