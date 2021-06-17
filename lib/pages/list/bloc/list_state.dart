part of 'list_bloc.dart';

abstract class ListState extends Equatable {
  const ListState();
}

class ListInitial extends ListState {
  @override
  List<Object> get props => [];
}
