import 'package:mvvm_templete/utils/imports/all_imports.dart';

class PostExampleRepo {
  final _apiServices = NetworkApiServices();

  Future<dynamic> exampleApi(var data) async {
    var response = await _apiServices.postApi(data, AppUrl.exampleUrl);
    return response;
  }
}
