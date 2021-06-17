import 'package:flutter/material.dart';

class WidgetSliverGrid extends StatefulWidget {
  @override
  _WidgetSliverGridState createState() => _WidgetSliverGridState();
}

class _WidgetSliverGridState extends State<WidgetSliverGrid> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 100.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 4.0,
      ),
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return new Container(
            alignment: Alignment.center,
            color: Colors.teal[100 * (index % 9)],
            child: new Text('$index'),
          );
        },
        childCount: 50,
      ),
    );
  }
}
