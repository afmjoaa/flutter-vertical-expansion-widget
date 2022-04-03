import 'package:flutter/material.dart';

import 'util/expansion_tile_widget.dart';
import 'util/new_core_feature_grid_view.dart';

void main() => runApp(
  const MaterialApp(
    title: 'Example App',
    debugShowCheckedModeBanner: false,
    home: TopSheet(),
  ),
);

class TopSheet extends StatefulWidget {
  const TopSheet({Key? key}) : super(key: key);

  @override
  _TopSheetState createState() => _TopSheetState();
}

class _TopSheetState extends State<TopSheet> {
  List<String> initial = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight'];
  List<String> hidden = ['nine', 'ten','eleven','twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(height: 36,),
          ExpansionTileWidget(
            visibleWidget: NewCoreFeatureGridView(initial, const EdgeInsets.only(top: 0)),
            children: <Widget>[
              NewCoreFeatureGridView(hidden, EdgeInsets.zero)
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}
