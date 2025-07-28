class HomeViewModel {
  String get greeting => "Hi, I'm Arun Joshua 👋";
  String get subtitle=>   "A passionate developer crafting Flutter apps with clean UI and smooth performance.";
  String get profileImagePath=>"assets/images/profile.jpg";
  List<String> get animatedRoles=>[
        "Flutter Developer",
        "UI/UX Enthusiast",
        "Firebase Expert",
        "Open Source Contributor",
      ];
      String get bio=> "With over 1 year of experience building scalable cross-platform apps, I specialize in Dart, Firebase, REST APIs, and beautiful Flutter UIs.";
  List<String> get skills => [
    "Flutter",
    "Firebase",
    "REST API",
    "UI/UX",
    "Clean Code",
    "Git",
  ]; 
       List<Map<String,String>>get socialLinks=>[
                {
          "name": "GitHub",
          "url": "https://github.com/arun-joshua",
        },
        {
          "name": "LinkedIn",
          "url": "https://linkedin.com/in/arun-joshua",
        },
        {
          "name": "Twitter",
          "url": "https://twitter.com/arun_joshua",
        },
      ];
  
  }