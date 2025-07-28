import 'package:arun_joshua/data/models/project.dart';

class ProjectViewModel {
  List get projects=>[
        Project(
          title: "Flutter Firebase Auth App",
          description:
              "An app with login, signup, and Firestore profile updates using Firebase.",
          tech: "Flutter, Firebase Auth, Firestore",
          link: "https://github.com/yourusername/flutter-firebase-auth",
        ),
        Project(
          title: "REST API Blog App",
          description:
              "Displays blog posts using REST API. Includes search, dark mode, and pagination.",
          tech: "Flutter, REST API, Provider",
          link: "https://github.com/yourusername/blog-api-app",
        ),
          ];
}