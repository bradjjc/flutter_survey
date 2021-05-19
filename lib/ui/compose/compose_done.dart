import 'package:flutter/material.dart';
import 'package:flutter_jet_survey/ui/home.dart';

class ComposeDone extends StatelessWidget {
  const ComposeDone({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(150.0), // here the desired height
      //     child: Visibility(
      //       visible: true,
      //       child: AppBar(
      //       ),
      //     )
      // ),
      body: Padding(
        padding: const EdgeInsets.only(top:200.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child:
                Text("Compose",
                style: TextStyle(fontSize: 50),
                )),
            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Container(
                  child:
                  Text("Congratulations, you are Compose",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Container(
                child:
                Text("You are a curious developer, always \nwilling to try something new.You want \nto stay up to date with the trends to Compose is your middle name",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:0.0),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Text("Done")),
            ),
          ],
        ),
      ),
    );
  }
}
