import 'package:awesome_app/model/item_model.dart';
import 'package:awesome_app/model/list_item_model.dart';
import 'package:awesome_app/pages/detail/detail_page.dart';
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
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                  itemModel: widget.itemModel,
                )));
      },
      child: Container(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              CachedNetworkImage(
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  imageUrl: widget.itemModel.src.small),
              SizedBox(width: 8,),
              Text(widget.itemModel.photographer,style: TextStyle(fontSize: 14),),
            ],
          ),
        ),
      ),
    );
  }
}
