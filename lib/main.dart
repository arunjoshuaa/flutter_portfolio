import 'package:arun_joshua/view/screens/about/about_view.dart';
import 'package:arun_joshua/view/screens/contact/contact_view.dart';
import 'package:arun_joshua/view/screens/home/home_view.dart';
import 'package:arun_joshua/view/screens/project/project_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PortfoiloApp());
}
class PortfoiloApp extends StatefulWidget {
  const PortfoiloApp({super.key});

  @override
  State<PortfoiloApp> createState() => _PortfoiloAppState();
}

class _PortfoiloAppState extends State<PortfoiloApp> {
  int selectedIndex=0;
  final screens=[HomeView(),AboutView(),ProjectView(),ContactView()];
  void onItemTapped(int index)=>setState(() {
    selectedIndex=index;
  });
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Arun Joshua Portfolio",
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(title: const Text("Arun Joshua"),centerTitle: true,),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "About"),
            BottomNavigationBarItem(icon: Icon(Icons.work),label: "Projects"),
            BottomNavigationBarItem(icon: Icon(Icons.mail),label: "Contact")
          ]),
      ),
    );
  }
}