import 'package:animated_widgets/animated_widgets.dart';
import 'package:example/utility/color.dart';
import 'package:flutter/material.dart';


class AnimatedListView extends StatelessWidget {
  final ListItemAnimationType listItemAnimationType;
  const AnimatedListView({super.key, required this.listItemAnimationType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FadeInAnimatedAppBar(
        backgroundColor: ColorUtility.magenta,
        title: const Text('Animated ListView Builder'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedListViewBuilder(
          itemCount: 25, // Change this to your desired item count
          customColor: ColorUtility.magenta,
          animationType: listItemAnimationType,
          itemBuilder: (context, index) {
            return Card(
              color: (listItemAnimationType == ListItemAnimationType.colorChange)?ColorUtility.white: ColorUtility.magenta,
              child: Center(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Item $index',style: TextStyle(color:(listItemAnimationType == ListItemAnimationType.colorChange)?ColorUtility.magenta: ColorUtility.white),textAlign: TextAlign.center,),
                ),
              ),
            );
          }, // Use the custom animation
        ),
      ),
    );
  }
}