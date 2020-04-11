import 'package:flutter/material.dart';
import 'package:liquid/src/widgets/liquid_page.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomePape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe( 
        pages: liquidPages,
        fullTransitionValue: 300,
        enableLoop: true,
        enableSlideIcon: true,
        positionSlideIcon: 0.8,
        waveType: WaveType.liquidReveal,

  //in the event that the application breaks
        onPageChangeCallback: (page) => pageChangeCallBack(page),
        currentUpdateTypeCallback: (updateType) => updateTypeCallback(updateType),
      ),
    );
  }

  pageChangeCallBack(int page){
    print(page);
  }

  updateTypeCallback(UpdateType updateType){
    print(updateType);
  }
}