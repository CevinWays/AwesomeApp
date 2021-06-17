import 'package:flutter/material.dart';

class WidgetSliverList extends StatefulWidget {
  @override
  _WidgetSliverListState createState() => _WidgetSliverListState();
}

class _WidgetSliverListState extends State<WidgetSliverList> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Container(
            color: Colors.white,
            height: 150.0,
            child: Center(
              child: Text('$index',style: TextStyle(fontSize: 9),),
            ),
          );
        },
        childCount: 20,
      ),
    );
  }
}
