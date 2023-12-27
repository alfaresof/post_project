import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:post_project/common/network/network_exception.dart';
import 'package:post_project/features/home/domain/state.dart';
import 'package:post_project/features/home/repo/post_api.dart';

final homeProvider = StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  return HomeNotifier();
});

class HomeNotifier extends StateNotifier<HomeState> {
  // هنا عرفنا المتحكّم واسندنا إليه حالة
  HomeNotifier()
      : super(HomeState.init()); // هنا أسندنا القيم الافتراضية للحالة
// هنا سنكتب الدوال التي تحدث الحالة

  void getPosts() async {
    final res = await PostsApi().getPosts();
    res.when(
      success: (data) {
        state = state.copyWith(postModel: data);
      },
      failure: (error) {
        print(error.toErrorMessage);
      },
    );
  }
}
