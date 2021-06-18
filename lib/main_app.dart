import 'file:///D:/Projects/awesome_app/lib/pages/grid/widget_sliver_grid.dart';
import 'package:awesome_app/pages/grid/bloc/grid_bloc.dart';
import 'package:awesome_app/pages/list/bloc/list_bloc.dart';
import 'package:awesome_app/pages/list/layout/widget_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  bool _stretch = true;
  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: _pinned,
                snap: _snap,
                floating: _floating,
                stretch: _stretch,
                expandedHeight: 200.0,
                title: Text("Awesome App"),
                actions: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isGrid = true;
                      });
                    },
                    child: Icon(Icons.grid_view),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isGrid = false;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 16, left: 8),
                      child: Icon(Icons.list_alt),
                    ),
                  ),
                ],
                flexibleSpace: const FlexibleSpaceBar(
                  background: FlutterLogo(),
                ),
              ),
              isGrid ? WidgetSliverGrid() : WidgetSliverList(),
            ],
          ),
        ),
      ),
    );
  }
}
