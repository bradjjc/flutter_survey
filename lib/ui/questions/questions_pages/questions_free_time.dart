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
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:150.0, left: 10.0),
            child: Text("In my free time I like to ...",
            style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const  NeverScrollableScrollPhysics(),
              children: list.freeTime.keys.map((String key) {
                return CheckboxListTile(
                  value: list.freeTime[key],
                  title: new Text(key),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  activeColor: Colors.purple,
                  checkColor: Colors.white,
                  controlAffinity: ListTileControlAffinity.leading,
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
      ),
    );
  }
}
