import 'package:awesome_app/model/item_model.dart';
import 'package:awesome_app/pages/grid/bloc/grid_bloc.dart';
import 'package:awesome_app/pages/grid/widget_item_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WidgetSliverGrid extends StatefulWidget {
  @override
  _WidgetSliverGridState createState() => _WidgetSliverGridState();
}

class _WidgetSliverGridState extends State<WidgetSliverGrid> {
  GridBloc _gridBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _gridBloc = GridBloc();
    _gridBloc.add(GetGridDatEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      cubit: _gridBloc,
      listener: (context, state) {
        if (state is GetGridDataFailed) {
          Fluttertoast.showToast(msg: "Terjadi Kesalahan");
        }
      },
      child: BlocBuilder(
        cubit: _gridBloc,
        builder: (context, state) {
          return SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                ItemModel itemModel = state is GetGridDatState
                    ? state.listItemModel.itemModel[index]
                    : null;
                return WidgetItemGrid(itemModel: itemModel);
              },
              childCount: state is GetGridDatState
                  ? state.listItemModel.itemModel.length
                  : 0,
            ),
          );
        },
      ),
    );
  }
}
