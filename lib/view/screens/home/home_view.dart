import 'dart:ui';

import 'package:animate_on_hover/animate_on_hover.dart';
import 'package:animated_background/animated_background.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:arun_joshua/view/screens/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zo_animated_border/zo_animated_border.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _slideAnimation;
  late final Animation<double> _fadeAnimation;
  late final HomeViewModel viewModel;
  @override
  void initState() {
    // TODO: implement initState
    
    viewModel=HomeViewModel();
    _controller=AnimationController(vsync: this,duration: const Duration(milliseconds: 1000));
    _slideAnimation=Tween(
begin: const Offset(0, 0.2),
end: Offset.zero
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _fadeAnimation=Tween<double>(begin: 0,end: 1).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    _controller.forward();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }


Widget buildAnimatedIntro(){
  return FadeTransition(opacity: _fadeAnimation,
  child: SlideTransition(position: _slideAnimation,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
               children: [
              Row(
                children: [
                  Text(viewModel.greeting,style: GoogleFonts.poppins(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),),
                ],
              ),
              SizedBox(height: 12,),
               Text(viewModel.subtitle,style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.grey[700]),),
               const SizedBox(height: 20,),
               Text(viewModel.bio,style: GoogleFonts.poppins(fontSize: 16,color: Colors.black87),),
               const SizedBox(height: 30,),
               Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(viewModel.profileImagePath),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(child: AnimatedTextKit(animatedTexts:
                  viewModel.animatedRoles.map((title)=>
                  TypewriterAnimatedText(title,textStyle: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w500),speed: Duration(milliseconds: 100)),
                  ).toList(),
                  // [
                  //   TypewriterAnimatedText("Flutter Developer",textStyle: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w500),speed: Duration(milliseconds: 100)
                  // ),
                  // ],
                  repeatForever: true,
                  pause: Duration(milliseconds: 1000),
                  ))
                ],
               ),
               const SizedBox(height: 30,),
               Wrap(
                spacing: 12,
                runSpacing: 12,
                children: viewModel.skills.map((skill){
                  return ZoMultiColorBorder(
 colors: [
    Colors.orange,
    Colors.white,
    Colors.green,
    Colors.indigo,
    Colors.pink,
  ],
  strokeWidth: 3,
  borderRadius: 75,

                    child: Chip(label: Text(skill,style: GoogleFonts.poppins()),backgroundColor: Colors.blue.shade50,).increaseSizeOnHover(1.5));
                }).toList(),
                ),
                const SizedBox(height: 30,),
                //call to action buttons
                Row(
                  children: [
                    ElevatedButton.icon(onPressed: (){}, label: const Text("View Projects"),icon: const Icon(Icons.work),style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,foregroundColor: Colors.white),),
                    const SizedBox(width: 16,),
                    OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.download),label: Text("Download Resume"),)
                  ],
                )
            ],
  ),
  
  ),
  );
}

Widget buildScrollIndicator(){
  return Padding(padding: const EdgeInsets.only(top: 40),child: Center(child: Column(
    children: [
      const Text("Scroll down",style: TextStyle(color: Colors.grey),),
      const SizedBox(height: 6,),
      TweenAnimationBuilder<double>(tween: Tween(begin: 0,end: 10), duration: const Duration(seconds: 1), builder: (_,value,child){
        return Padding(padding:  EdgeInsets.only(top: value),child: child,);
      },
      onEnd: ()=>setState(() {}),
      child: const Icon(Icons.keyboard_arrow_down,size: 32,color: Colors.grey,),
      
      
      )
    ],
  ),),);
}



  @override
  Widget build(BuildContext context) {
final screenHeight=MediaQuery.of(context).size.height;
return AnimatedBackground(
  vsync: this,
  behaviour: RandomParticleBehaviour(
    options: ParticleOptions(
      baseColor: Colors.blueAccent,
      spawnOpacity: 0,
      opacityChangeRate: 0.25,
      minOpacity: 0.1,
      maxOpacity: 0.4,
      spawnMinSpeed: 20,
      spawnMaxSpeed: 70,
      spawnMinRadius: 2,
      spawnMaxRadius: 6,
      particleCount: 30
    
    )
  ),
  child: SingleChildScrollView(
  child:  Container(
    constraints: BoxConstraints(minHeight: screenHeight),
    padding:const EdgeInsets.symmetric(horizontal: 24,vertical: 60),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildAnimatedIntro(),
        buildScrollIndicator()
      ],
    ),
  ),
    ),
);
  }
}