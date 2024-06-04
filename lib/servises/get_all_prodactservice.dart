import 'dart:convert';

import 'package:http/http.dart';
import 'package:store_app/helper/Api.dart';
import 'package:store_app/models/prodect_model.dart';
import 'package:http/http.dart' as http;

class GetAllProdactsServase {
  Future<List<ProdactModel>> GetAllProdact() async {
    Response response =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<dynamic> data = jsonDecode(response.body);
    List<ProdactModel> prodactList = [];
    for (int i = 0; i < data.length; i++) {
      prodactList.add(ProdactModel.fromjson(data[i]));
    }
    return prodactList;
  }
}
