import 'package:get/get.dart';

class ApiHttp extends GetConnect {
  var url = 'https://valorant-api.com/v1/agents';
  Future<Response> httpGet(
      {required String url, Map<String, dynamic>? query}) async {
    final response = await get(url, query: query, headers: {
      "Content-type": "application/json",
    });
    return response;
  }
}
