import 'package:awesome_app/model/item_model.dart';
import 'package:awesome_app/model/list_item_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WidgetItemList extends StatefulWidget {
  final ItemModel itemModel;

  const WidgetItemList({Key key, this.itemModel}) : super(key: key);
  @override
  _WidgetItemListState createState() => _WidgetItemListState();
}

class _WidgetItemListState extends State<WidgetItemList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CachedNetworkImage(imageUrl: widget.itemModel.src.small),
          Text(widget.itemModel.photographer,style: TextStyle(fontSize: 14),),
        ],
      ),
    );
  }
}
