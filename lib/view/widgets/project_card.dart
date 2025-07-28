import 'package:arun_joshua/data/models/project.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';



class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({super.key,required this.project});

void urlLaunch(BuildContext context)async{
  if(project.link==null||project.link.trim().isEmpty){
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:  Text("No project link available")));return;
  }
  final Uri url=Uri.parse(project.link);
  if(await canLaunchUrl(url)){
    await launchUrl(url);
  }else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Could not launch URL")),
      );
    } 
}
  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(project.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(height: 8,),
          Text(project.description),
          const SizedBox(height: 8,),
          Text("Tech:${project.tech}",style: TextStyle(fontStyle: FontStyle.italic),),
          SizedBox(height: 12,),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton.icon(onPressed: ()=>urlLaunch(context), 
            icon: Icon(Icons.open_in_new),
            label: const Text("View Project")),

             )
        ],
        ),
      ),
    );
  }
}