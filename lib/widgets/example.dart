//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        child: CustomSingleChildLayout(
            delegate: OwnSingleChildLayoutDelegate(),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            )),
      ),
    );
  }
}

class OwnSingleChildLayoutDelegate extends SingleChildLayoutDelegate {
  @override
  Size getSize(BoxConstraints constraints) {
    return Size(constraints.biggest.width, 300);
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.tight(Size(50, 50));
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    final yoffset = size.height / 2 - childSize.height / 2;
    final widthcenter = size.width / 2 - childSize.width / 2;
    return Offset(widthcenter, yoffset);
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    // TODO: implement shouldRelayout
    throw UnimplementedError();
  }
}
