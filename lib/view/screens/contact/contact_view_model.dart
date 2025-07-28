import 'package:url_launcher/url_launcher.dart';

class ContactViewModel {
  Future launchEmail() async{
    final Uri email=Uri(
      scheme: "mailto",
      path: "arunjoshuaa@gmail.com",
      query: "subject=Portfolio Contact"
    );
    if(await canLaunchUrl(email)){
      await launchUrl(email);
    }
  }
  Future launchLinkedIn() async{
    final Uri url=Uri.parse("https://www.linkedin.com/in/arunjoshua/");
    if(await canLaunchUrl(url)){
      await launchUrl(url);
    }
  }
}