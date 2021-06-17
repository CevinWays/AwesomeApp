import 'package:awesome_app/helper/constant_helper.dart';
import 'package:awesome_app/helper/dio_helper.dart';
import 'package:awesome_app/model/list_item_model.dart';
import 'package:dio/dio.dart';

class ListRepository{
  Future<ListItemModel> getListDataPhotos() async{
    Response response = await DioHelper.dio.get(ConstantHelper.GET_LIST_PHOTOS);
    return ListItemModel.fromJson(response.data["data"]);
  }
}