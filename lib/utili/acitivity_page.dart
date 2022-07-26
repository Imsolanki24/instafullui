import 'package:flutter/material.dart';


class ActivityPage extends StatelessWidget {
  final List dummyList = List.generate(20, (index) {
  return {
  "id": index,
  "title": "imsolanki like your photo",
  "subtitle": "This is the subtitle $index"
  };
  });

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: dummyList.length,
      itemBuilder: (context, index) => Card(
        elevation: 2,
        margin: EdgeInsets.all(10),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[400],
          ),
          title: Text(dummyList[index]["title"]),
          subtitle: Text(dummyList[index]["subtitle"]),

        ),
      ),
    );
  }
}
