import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_failure.freezed.dart';

@freezed
class AppFailure with _$AppFailure {
  const factory AppFailure.failure({@Default('') String msg}) =
      AppRequestFailure;
  const factory AppFailure.success({@Default('') String msg}) =
      AppRequestSuccess;
}
