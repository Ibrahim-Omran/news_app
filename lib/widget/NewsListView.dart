
import 'package:flutter/material.dart';

import 'NewsListViewIteam.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 10,

        itemBuilder:(context,index){
          return NewsListViewItem();

        }
    );
  }
}
