import 'package:flutter/material.dart';
import 'package:insta_full_ui/utili/bubble_stories.dart';
import 'package:insta_full_ui/utili/user_post.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'imsolanki_a.j',
    'mayank2784',
    'kaur_kiran',
    'niatigupta',
    'yasar_kaleem',
    'imsolanki_sky'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Instagram',
          style: const TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
              size: 25,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.local_post_office_outlined,
                color: Colors.black,
                size: 25,
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                }),
          ),
         Expanded(
           child: ListView.builder(
             itemCount: people.length,
               itemBuilder: (context , index){
             return UserPost(name: people[index],);
           }),
         )
        ],
      ),
    );
  }
}
