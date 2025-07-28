import 'package:arun_joshua/data/models/project.dart';
import 'package:arun_joshua/view/screens/project/project_view_model.dart';
import 'package:arun_joshua/view/widgets/project_card.dart';
import 'package:flutter/material.dart';

class ProjectView extends StatelessWidget {
   ProjectView({super.key});
   final ProjectViewModel viewModel=ProjectViewModel();
  
  @override
  Widget build(BuildContext context) {
    final projects=viewModel.projects;
    return  ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: projects.length,
      itemBuilder: (context,index){
        return ProjectCard(project: projects[index]);
      },
    );
  }
}