part of 'grid_bloc.dart';

abstract class GridState extends Equatable {
  const GridState();
}

class GridInitial extends GridState {
  @override
  List<Object> get props => [];
}

class GetGridDatState extends GridState{
  final ListItemModel listItemModel;

  GetGridDatState({this.listItemModel});
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class GetGridDataFailed extends GridState{
  @override
  // TODO: implement props
  List<Object> get props => [];
}
