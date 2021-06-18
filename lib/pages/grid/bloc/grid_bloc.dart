import 'dart:async';

import 'package:awesome_app/model/list_item_model.dart';
import 'package:awesome_app/repository/photos_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'grid_event.dart';
part 'grid_state.dart';

class GridBloc extends Bloc<GridEvent, GridState> {
  GridBloc() : super(GridInitial());

  PhotosRepository _photosRepository = PhotosRepository();
  ListItemModel listItemModel;

  @override
  Stream<GridState> mapEventToState(GridEvent event) async* {
    if(event is GetGridDatEvent){
      yield* _getListData();
    }
  }

  Stream<GridState> _getListData() async*{
    yield GridInitial();
    try{
      listItemModel = await _photosRepository.getListDataPhotos();
      if(listItemModel != null){
        yield GetGridDatState(listItemModel: listItemModel);
      }else{
        yield GetGridDataFailed();
      }
    }catch(e){
      yield GetGridDataFailed();
    }
  }
}
