import 'package:post_project/common/network/dio_client.dart';
import 'package:post_project/common/network/endpoint.dart';
import 'package:post_project/common/network/network_exception.dart';
import 'package:post_project/common/services/get_it.dart';
import 'package:post_project/features/home/models/post_model.dart';

import '../../../common/network/api_result.dart';

class PostsApi {
  final network = getIt.get<DioClient>();

  Future<ApiResult<PostModel>> getPosts() async {
    try {
      final res = await network.dio.get(Endpoints.posts);
      if (res.statusCode == 200) {
        final model = PostModel.fromJson(res.data);
        return ApiResult.success(data: model);
      }
      return ApiResult.failure(
          error: NetworkExceptions.getDioException(res.statusCode));
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
