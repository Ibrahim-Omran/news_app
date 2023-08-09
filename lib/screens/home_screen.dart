import 'package:flutter/material.dart';
import 'package:news_app_new/screens/business_screen.dart';
import 'package:news_app_new/screens/science_screen.dart';
import 'package:news_app_new/screens/sports_screen.dart';
import 'package:news_app_new/widget/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0 ;
  final pages =[
    const BusinessScreen(),
    const SportsScreen(),
    const ScienceScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[index],


      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index)=>setState(()=> this.index = index),
        height: 60,
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.business),
              selectedIcon: Icon(Icons.business),
              label: 'business'
          ),

          NavigationDestination(
              icon: Icon(Icons.sports_football),
              selectedIcon: Icon(Icons.sports_football),
              label: 'Sports'
          ),

          NavigationDestination(
              icon: Icon(Icons.science),
              selectedIcon: Icon(Icons.science),
              label: 'Sports'
          ),



        ],
      ),

    );
  }
}
