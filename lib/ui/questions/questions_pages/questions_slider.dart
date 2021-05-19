import 'package:flutter/material.dart';

class QuestionsSlider extends StatefulWidget {
  const QuestionsSlider({Key key}) : super(key: key);

  @override
  _QuestionsSliderState createState() => _QuestionsSliderState();
}

class _QuestionsSliderState extends State<QuestionsSlider> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:200.0,left: 20.0,right: 30.0),
        child: Column(
          children: [
            Text("How do you feel about \nselfies \u{1F933}?",
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("\u{1F62D}",
                  style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 280,
                    child: Slider(
                      activeColor: Colors.purple,
                      inactiveColor: Colors.purple[100],
                      value: _currentSliderValue,
                      min: 0,
                      max: 100,
                      divisions: 10,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                  ),
                  Text("\u{1F60D}",
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

