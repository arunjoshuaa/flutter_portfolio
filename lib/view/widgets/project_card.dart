import 'package:arun_joshua/data/models/project.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';



class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({super.key,required this.project});

void urlLaunch()async{
  final Uri url=Uri.parse("https://www.linkedin.com/in/arunjoshua/");
  if(await canLaunchUrl(url)){
    await launchUrl(url);
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
          ElevatedButton(onPressed: urlLaunch, child: const Text("View on GitHub"))
        ],
        ),
      ),
    );
  }
}