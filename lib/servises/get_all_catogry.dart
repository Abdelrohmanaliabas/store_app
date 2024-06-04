import 'dart:convert';

import 'package:store_app/helper/Api.dart';
import 'package:store_app/models/prodect_model.dart';
import 'package:http/http.dart' as http;

class GetAllCategoriesSercies {
  Future<List<dynamic>> GetAllCategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
