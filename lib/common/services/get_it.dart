import 'package:get_it/get_it.dart';
import 'package:post_project/common/network/dio_client.dart';

GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<DioClient>(DioClient());
}
