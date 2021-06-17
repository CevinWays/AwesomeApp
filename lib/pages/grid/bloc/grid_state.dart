part of 'grid_bloc.dart';

abstract class GridState extends Equatable {
  const GridState();
}

class GridInitial extends GridState {
  @override
  List<Object> get props => [];
}
