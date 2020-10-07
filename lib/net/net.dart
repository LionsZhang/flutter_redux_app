import 'package:flutter_redux_app/model/model.dart';

class Api {
  factory Api() {
    return _get();
  }

  static Api _instance;

  Api._internal();

  static _get() {
    if (_instance == null) {
      _instance = Api._internal();
    }
    return _instance;
  }


  List<ProductBean> getProductData() {
    return [
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),
      ProductBean( "产品1"),

    ];
  }
}