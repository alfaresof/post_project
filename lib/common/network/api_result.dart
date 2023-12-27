import 'package:freezed_annotation/freezed_annotation.dart';

import 'network_exception.dart';

part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T> {
  // في حالة أنَ الرد ناجح اسمينا هذه الحالة بنجاح success
  factory ApiResult.success({required T data}) = Success<T>;

  // في حالة الأخطاء نمرر الخطأ عن طريق حالة الفشل failure
  factory ApiResult.failure({required NetworkExceptions error}) = Failure<T>;
}
