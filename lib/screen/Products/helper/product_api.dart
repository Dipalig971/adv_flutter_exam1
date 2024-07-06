import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ProductApi{
  static String api= 'https://dummyjson.com/products';

  Future<String?> apicalled() async {
    // Uri uri = Uri.parse(api);
    Response response =await http.get(Uri.parse('https://dummyjson.com/products'));

    if(response.statusCode==200){
      print('--------------------Api Called-------------');
      return response.body;
    }
    return null;
  }
}