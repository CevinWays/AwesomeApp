import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  bool _stretch = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: _pinned,
              snap: _snap,
              floating: _floating,
              stretch: _stretch,
              expandedHeight: 200.0,
              flexibleSpace: const FlexibleSpaceBar(
                title: Text('Awesome App'),
                background: FlutterLogo(),
                centerTitle: true,
              ),
            ),
            SliverList(
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
            )
          ],
        ),
      ),
    );
  }
}
