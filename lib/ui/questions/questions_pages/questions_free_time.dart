import 'package:flutter/material.dart';
import 'package:flutter_jet_survey/provider/list_provider.dart';
import 'package:provider/provider.dart';

class QuestionsFreeTime extends StatefulWidget {
  const QuestionsFreeTime({Key key}) : super(key: key);

  @override
  _QuestionsFreeTimeState createState() => _QuestionsFreeTimeState();
}

class _QuestionsFreeTimeState extends State<QuestionsFreeTime> {
  @override
  Widget build(BuildContext context) {
    var list = context.read<ListProvider>();
    return Column(
      children: [
        Text("freetime"),
        Expanded(
          flex: 1,
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const  NeverScrollableScrollPhysics(),
            children: list.freeTime.keys.map((String key) {
              return new CheckboxListTile(
                title: new Text(key),
                value: list.freeTime[key],
                activeColor: Colors.pink,
                checkColor: Colors.white,
                onChanged: (bool value) {
                  setState(() {
                    list.freeTime[key] = value;
                  });
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
