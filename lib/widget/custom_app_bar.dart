import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children:  [
          const Text(
            'News App',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
          const Spacer(),

          IconButton(
              onPressed: (){

              },
              icon: const Icon(
                Icons.light_mode,
                size: 30,
              ),
          ),


          IconButton(
            onPressed: (){

            },
            icon: const Icon(
                Icons.search_sharp,
              size: 30,
            ),
          ),
        ],

      ),
    );
  }
}
