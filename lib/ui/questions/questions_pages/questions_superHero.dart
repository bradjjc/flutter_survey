import 'package:flutter/material.dart';
import 'package:flutter_jet_survey/provider/list_provider.dart';
import 'package:provider/provider.dart';

class QuestionsSuperHero extends StatefulWidget {
  const QuestionsSuperHero({Key key}) : super(key: key);

  @override
  _QuestionsSuperHeroState createState() => _QuestionsSuperHeroState();
}

class _QuestionsSuperHeroState extends State<QuestionsSuperHero> {
  @override
  Widget build(BuildContext context) {
    var list = context.read<ListProvider>();
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:150.0, left: 0.0),
            child: Text("Pick a superhero",
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const  NeverScrollableScrollPhysics(),
              children: list.superhero.keys.map((String key) {
                return new CheckboxListTile(
                  value: list.superhero[key],
                  title: new Text(key),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Colors.purple,
                  checkColor: Colors.white,
                  onChanged: (bool value) {
                    setState(() {
                      list.superhero[key] = value;
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

