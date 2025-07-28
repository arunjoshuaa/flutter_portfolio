import 'package:arun_joshua/view/screens/about/about_view_model.dart';
import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel=AboutViewModel();
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(viewModel.title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          SizedBox(height: 16,),
          Text(viewModel.description,style: TextStyle(fontSize: 16),
          ),
         const SizedBox(height: 24,),
          Text(viewModel.skillsTitle,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
         const SizedBox(height: 8,),
         ...viewModel.skills.map((skill)=>Text("• $skill"))
          // Text("• Flutter, Dart\n• Firebase Auth, Firestore\n• REST API integration\n• Git, SQLite\n• BLoC, Provider"),      
          ],
      ),
    );
  }
}