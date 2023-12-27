class Endpoints {
  Endpoints._();

  // العنوان
  static const String baseUrl = 'https://dummyjson.com';

  //المنشورات
  static const String posts = '/posts';

  //معلومات منشور معين
  static String getPostDetails(int id) {
    return 'posts/$id';
  }
}
