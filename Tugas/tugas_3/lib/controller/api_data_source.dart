import '../service/base_network.dart';

class ApiDataSource {
  static ApiDataSource instance = ApiDataSource();

  Future<Map<String, dynamic>> loadListFilm(String text) {
    return BaseNetwork.get("s=${text}");
  }
}
