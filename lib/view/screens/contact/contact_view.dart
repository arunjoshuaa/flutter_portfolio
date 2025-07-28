import 'package:arun_joshua/view/screens/contact/contact_view_model.dart';
import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
   ContactView({super.key});
  final ContactViewModel viewModel=ContactViewModel();

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(onPressed: viewModel.launchEmail, label: Text("Email me"),icon: Icon(Icons.email),),
            const SizedBox(height: 10,),
            ElevatedButton.icon(onPressed: viewModel.launchLinkedIn, label: const Text("LinkedIn"),icon: Icon(Icons.person),)
          ],
        ),
    );
  }
}