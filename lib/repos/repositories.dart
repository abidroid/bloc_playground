import 'dart:convert';

import 'package:bloc_playground/models/post_model.dart';
import 'package:http/http.dart' as http;

class PostRepository {
  Future<PostModel> submitPost({required String title, required String body}) async {
    String url = 'https://jsonplaceholder.typicode.com/posts';

    var bodyy = {'title': title, 'body': body, 'userId': '1'};

    http.Response response = await http.post(Uri.parse(url), body: bodyy);

    if (response.statusCode == 200 || response.statusCode == 201) {
      var jsonResponse = jsonDecode(response.body);

      return PostModel.fromJson(jsonResponse);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
