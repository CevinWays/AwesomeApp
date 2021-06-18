import 'package:awesome_app/model/item_model.dart';
import 'package:awesome_app/pages/detail/detail_page.dart';
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
        padding: EdgeInsets.only(bottom: 8),
        child: Column(
          children: [
            Expanded(
              child: CachedNetworkImage(
                  width: 200,
                  height: 400,
                  fit: BoxFit.cover,
                  imageUrl: widget.itemModel.src.large),
            ),
            SizedBox(height: 8),
            Text(widget.itemModel.photographer),
          ],
        ),
      ),
    );
  }
}
