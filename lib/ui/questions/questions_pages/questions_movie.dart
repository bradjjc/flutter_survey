import 'package:flutter/material.dart';
import 'package:flutter_jet_survey/provider/list_provider.dart';
import 'package:provider/provider.dart';

class QuestionMovie extends StatefulWidget {
  const QuestionMovie({Key key}) : super(key: key);

  @override
  _QuestionMovieState createState() => _QuestionMovieState();
}

class _QuestionMovieState extends State<QuestionMovie> {
  @override
  Widget build(BuildContext context) {
    var list = context.read<ListProvider>();
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:150.0, left: 10.0),
            child: Text("What's your favorite \nmovie?",
              style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const  NeverScrollableScrollPhysics(),
              children: list.movie.keys.map((String key) {
                return new CheckboxListTile(
                  value: list.movie[key],
                  title: new Text(key),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Colors.purple,
                  checkColor: Colors.white,
                  onChanged: (bool value) {
                    setState(() {
                      list.movie[key] = value;
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

