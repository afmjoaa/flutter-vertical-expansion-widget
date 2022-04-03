import 'package:flutter/material.dart';

class NewCoreFeatureGridView extends StatelessWidget {
  final List<String> homeItemList;
  final int perRowItemCountForNormalScreen = 4;
  final int perRowItemCountForSmallScreen = 3;
  final double mainAxisSpacing = 5.0;
  final EdgeInsetsGeometry edgeInsetsGeometry;

  const NewCoreFeatureGridView(this.homeItemList, this.edgeInsetsGeometry, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    int itemCount = homeItemList.length > 6
        ? perRowItemCountForNormalScreen : perRowItemCountForSmallScreen;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: GridView.builder(
        padding: edgeInsetsGeometry,
        shrinkWrap: true,
        itemCount: homeItemList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:  itemCount,
          mainAxisSpacing: 0,
        ),
        itemBuilder: (_, int index) =>
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.access_alarms_outlined),
                  Text(homeItemList[index])
                ],
              ),
            ),
        physics: const NeverScrollableScrollPhysics(),
      ),
    );
  }
}
