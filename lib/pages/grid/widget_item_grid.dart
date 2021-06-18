import 'package:awesome_app/model/item_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WidgetItemGrid extends StatefulWidget {
  final ItemModel itemModel;

  const WidgetItemGrid({Key key, this.itemModel}) : super(key: key);
  @override
  _WidgetItemGridState createState() => _WidgetItemGridState();
}

class _WidgetItemGridState extends State<WidgetItemGrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 6,
              child: CachedNetworkImage(
                width: 200,
                  height: 400,
                  fit: BoxFit.cover,
                  imageUrl: widget.itemModel.src.large)),
          // Expanded(
          //     child: Text(widget.itemModel.photographer,style: TextStyle(fontSize: 14),)),
        ],
      ),
    );
  }
}
