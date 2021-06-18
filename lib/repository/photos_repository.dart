import 'dart:io';

import 'package:awesome_app/helper/constant_helper.dart';
import 'package:awesome_app/helper/dio_helper.dart';
import 'package:awesome_app/model/list_item_model.dart';
import 'package:dio/dio.dart';

class PhotosRepository{
  Future<ListItemModel> getListDataPhotos() async{
    Response response = await DioHelper.dio.get(ConstantHelper.GET_LIST_PHOTOS,queryParameters: {"per_page": 15} );
    if(response.statusCode == HttpStatus.ok){
      return ListItemModel.fromJson(response.data);
    }else{
      return null;
    }
  }
}