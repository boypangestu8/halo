import 'dart:convert';
import 'package:get/get.dart';
import 'package:halo/base_controller.dart';
import 'package:http/http.dart' as http;

class CategoriesController extends BaseController {
  final _data = {}.obs;

  @override
  void onInit() {
    super.onInit();
    getList();
  }

  Future getList() async {
    startLoading();

    try {
      final response = await http.get(Uri.parse('https://halo.com/api/categories'));

      if (response.statusCode == 200) {
        _data.value = json.decode(response.body);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      setError();
    } finally {
      stopLoading();
    }
  }
}
