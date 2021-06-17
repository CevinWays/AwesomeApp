part of 'list_bloc.dart';

abstract class ListState extends Equatable {
  const ListState();
}

class ListInitial extends ListState {
  @override
  List<Object> get props => [];
}

class GetDataFailed extends ListState{
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class GetListDataState extends ListState{
  final ListItemModel listItemModel;

  GetListDataState({this.listItemModel});
  @override
  // TODO: implement props
  List<Object> get props => [];
}
