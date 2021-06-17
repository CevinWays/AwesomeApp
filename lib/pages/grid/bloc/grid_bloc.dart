import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'grid_event.dart';
part 'grid_state.dart';

class GridBloc extends Bloc<GridEvent, GridState> {
  GridBloc() : super(GridInitial());

  @override
  Stream<GridState> mapEventToState(GridEvent event) async* {
    // TODO: implement mapEventToState
  }
}
