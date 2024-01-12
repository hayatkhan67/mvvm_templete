import 'package:mvvm_templete/utils/imports/all_imports.dart';

class GetExampleRepo {
  final _apiServices = NetworkApiServices();

  Future<dynamic> exampleApi(url) async {
    var response = await _apiServices.getApi(url);
    return response;
  }
}
