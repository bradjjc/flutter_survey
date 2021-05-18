import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuestionsMain extends StatefulWidget {
  const QuestionsMain({Key key}) : super(key: key);

  @override
  _QuestionsMainState createState() => _QuestionsMainState();
}

class _QuestionsMainState extends State<QuestionsMain> {
  final PageController controller = PageController();

  void _pageChanged(int index) {
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 850.0,
            child: Container(
              color: Colors.white,
              child: PageView.builder(
                onPageChanged: _pageChanged,
                controller: controller,
                itemBuilder: (context, index) {
                  return new Center(
                    child: new Text('page ${index}'),
                  );
                },
              ),
            )),
        Row(
          children: [
            Text("back"),
            Indicator(
              controller: controller,
              itemCount: 6,
            ),
            Text("next"),
          ],
        ),
      ],
    );
  }
}

class Indicator extends StatelessWidget {
  Indicator({
    this.controller,
    this.itemCount: 0,
  }) : assert(controller != null);
  final PageController controller;
  final int itemCount;
  final Color normalColor = Colors.blue;
  final Color selectedColor = Colors.red;
  final double size = 15.0;
  final double spacing = 4.0;

  Widget _buildIndicator(
      int index, int pageCount, double dotSize, double spacing) {

    bool isCurrentPageSelected = index ==
        (controller.page != null ? controller.page.round() % pageCount : 0);

    return new Container(
      height: size,
      width: size + (2 * spacing),
      child: new Center(
        child: new Material(
          color: isCurrentPageSelected ? selectedColor : normalColor,
          type: MaterialType.circle,
          child: new Container(
            width: dotSize,
            height: dotSize,
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: new List<Widget>.generate(itemCount, (int index) {
        return _buildIndicator(index, itemCount, size, spacing);
      }),
    );
  }
}

