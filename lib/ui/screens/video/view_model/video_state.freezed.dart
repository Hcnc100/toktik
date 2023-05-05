// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoState {
  List<VideoData> get videos => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  bool get isFristRequest => throw _privateConstructorUsedError;
  bool get isConcateated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoStateCopyWith<VideoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStateCopyWith<$Res> {
  factory $VideoStateCopyWith(
          VideoState value, $Res Function(VideoState) then) =
      _$VideoStateCopyWithImpl<$Res, VideoState>;
  @useResult
  $Res call(
      {List<VideoData> videos,
      int currentIndex,
      bool isPlaying,
      bool isFristRequest,
      bool isConcateated});
}

/// @nodoc
class _$VideoStateCopyWithImpl<$Res, $Val extends VideoState>
    implements $VideoStateCopyWith<$Res> {
  _$VideoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
    Object? currentIndex = null,
    Object? isPlaying = null,
    Object? isFristRequest = null,
    Object? isConcateated = null,
  }) {
    return _then(_value.copyWith(
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoData>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isFristRequest: null == isFristRequest
          ? _value.isFristRequest
          : isFristRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      isConcateated: null == isConcateated
          ? _value.isConcateated
          : isConcateated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoStateCopyWith<$Res>
    implements $VideoStateCopyWith<$Res> {
  factory _$$_VideoStateCopyWith(
          _$_VideoState value, $Res Function(_$_VideoState) then) =
      __$$_VideoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<VideoData> videos,
      int currentIndex,
      bool isPlaying,
      bool isFristRequest,
      bool isConcateated});
}

/// @nodoc
class __$$_VideoStateCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$_VideoState>
    implements _$$_VideoStateCopyWith<$Res> {
  __$$_VideoStateCopyWithImpl(
      _$_VideoState _value, $Res Function(_$_VideoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
    Object? currentIndex = null,
    Object? isPlaying = null,
    Object? isFristRequest = null,
    Object? isConcateated = null,
  }) {
    return _then(_$_VideoState(
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoData>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isFristRequest: null == isFristRequest
          ? _value.isFristRequest
          : isFristRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      isConcateated: null == isConcateated
          ? _value.isConcateated
          : isConcateated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VideoState implements _VideoState {
  const _$_VideoState(
      {final List<VideoData> videos = const [],
      this.currentIndex = 0,
      this.isPlaying = false,
      this.isFristRequest = true,
      this.isConcateated = false})
      : _videos = videos;

  final List<VideoData> _videos;
  @override
  @JsonKey()
  List<VideoData> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final bool isPlaying;
  @override
  @JsonKey()
  final bool isFristRequest;
  @override
  @JsonKey()
  final bool isConcateated;

  @override
  String toString() {
    return 'VideoState(videos: $videos, currentIndex: $currentIndex, isPlaying: $isPlaying, isFristRequest: $isFristRequest, isConcateated: $isConcateated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoState &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.isFristRequest, isFristRequest) ||
                other.isFristRequest == isFristRequest) &&
            (identical(other.isConcateated, isConcateated) ||
                other.isConcateated == isConcateated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_videos),
      currentIndex,
      isPlaying,
      isFristRequest,
      isConcateated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoStateCopyWith<_$_VideoState> get copyWith =>
      __$$_VideoStateCopyWithImpl<_$_VideoState>(this, _$identity);
}

abstract class _VideoState implements VideoState {
  const factory _VideoState(
      {final List<VideoData> videos,
      final int currentIndex,
      final bool isPlaying,
      final bool isFristRequest,
      final bool isConcateated}) = _$_VideoState;

  @override
  List<VideoData> get videos;
  @override
  int get currentIndex;
  @override
  bool get isPlaying;
  @override
  bool get isFristRequest;
  @override
  bool get isConcateated;
  @override
  @JsonKey(ignore: true)
  _$$_VideoStateCopyWith<_$_VideoState> get copyWith =>
      throw _privateConstructorUsedError;
}
