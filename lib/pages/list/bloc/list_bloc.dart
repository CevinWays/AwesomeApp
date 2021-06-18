import 'dart:async';

import 'package:awesome_app/model/list_item_model.dart';
import 'package:awesome_app/repository/photos_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'list_event.dart';
part 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  ListBloc() : super(ListInitial());

  PhotosRepository _photosRepository = PhotosRepository();
  ListItemModel listItemModel;

  @override
  Stream<ListState> mapEventToState(ListEvent event) async* {
    if(event is GetListDatEvent){
      yield* _getListData();
    }
  }

  Stream<ListState> _getListData() async*{
    yield ListInitial();
    try{
      listItemModel = await _photosRepository.getListDataPhotos();
      if(listItemModel != null){
        yield GetListDataState(listItemModel: listItemModel);
      }else{
        yield GetDataFailed();
      }
    }catch(e){
      yield GetDataFailed();
    }
  }
}
