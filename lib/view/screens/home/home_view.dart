import 'package:arun_joshua/view/screens/home/home_view_model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel=HomeViewModel();
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(viewModel.greeting,style: TextStyle(fontSize: 24),),
          SizedBox(height: 8,),
           Text(viewModel.subtitle),
        ],
      ),
    );
  }
}