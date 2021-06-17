import 'package:awesome_app/model/item_model.dart';
import 'package:awesome_app/pages/list/bloc/list_bloc.dart';
import 'package:awesome_app/pages/list/layout/widget_item_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WidgetSliverList extends StatefulWidget {
  @override
  _WidgetSliverListState createState() => _WidgetSliverListState();
}

class _WidgetSliverListState extends State<WidgetSliverList> {
  ListBloc _listBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _listBloc = ListBloc();
    _listBloc.add(GetListDatEvent());
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener(
      cubit: _listBloc,
      listener: (context,state){
        if(state is GetDataFailed){
          Fluttertoast.showToast(msg: "Terjadi Kesalahan");
        }
      },
      child: BlocBuilder(
        cubit: _listBloc,
        builder: (context,state){
          return SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    ItemModel itemModel = state is GetListDataState ? state.listItemModel.itemModel[index] : null;
                return WidgetItemList(itemModel: itemModel,);
              },
              childCount: state is GetListDataState ? state.listItemModel.itemModel.length : 0,
            ),
          );
        },
      ),
    );
  }
}
