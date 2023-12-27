import 'package:post_project/features/home/models/post_model.dart';

class HomeState {
  //الخطوة الأولى وهي تعريف المتغير بنوع final
  final PostModel postModel;

  //الخطوة الثانية , اضافة المتغير مدخلاً للكلاس
  HomeState({
    required this.postModel,
  });

  //الخطوة الثالثة , اضافة قيمة افتراضية للمتغير
  factory HomeState.init() {
    return HomeState(
      postModel: PostModel(
        posts: [],
        total: 0,
        limit: 0,
        skip: 0,
      ),
    );
  }

  // الخطوة الرابع وهي اضافة دالة تحديث الحالة وتدعى عادةً ب copyWith
  HomeState copyWith({
    PostModel? postModel,
  }) {
    return HomeState(
      postModel: postModel ?? this.postModel,
    );
  }
}
