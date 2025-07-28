import 'package:arun_joshua/view/screens/about/about_view.dart';
import 'package:arun_joshua/view/screens/contact/contact_view.dart';
import 'package:arun_joshua/view/screens/home/home_view.dart';
import 'package:arun_joshua/view/screens/project/project_view.dart';
import 'package:arun_joshua/view/widgets/custom_appbar.dart';
import 'package:arun_joshua/view/widgets/custom_bottomnavbar.dart';
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
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.teal, //Sets app’s main theme color (with multiple shades)
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true, // Enables Material Design 3 for better UI
        fontFamily: 'Roboto'),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.teal,
          scaffoldBackgroundColor: Colors.black,
          useMaterial3: true
        ),
        themeMode: ThemeMode.system,
      home: Scaffold(
        appBar:CustomAppbar(),
        body: screens[selectedIndex],
        bottomNavigationBar: CustomBottomnavbar(currentIndex: selectedIndex, ontap: onItemTapped),
      ),
    );
  }
}