import 'dart:convert';

import 'package:http/http.dart';
import 'package:store_app/helper/Api.dart';
import 'package:store_app/models/prodect_model.dart';
import 'package:http/http.dart' as http;

class GetCategory {
  Future<List<ProdactModel>> GetAllProdact(
      {required String Catogry_key}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$Catogry_key');

    List<ProdactModel> prodactList = [];
    for (int i = 0; i < data.length; i++) {
      prodactList.add(ProdactModel.fromjson(data[i]));
    }
    return prodactList;
  }
}
