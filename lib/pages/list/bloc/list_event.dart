part of 'list_bloc.dart';

abstract class ListEvent extends Equatable {
  const ListEvent();
}

class GetListDatEvent extends ListEvent{
  @override
  // TODO: implement props
  List<Object> get props => [];
}
