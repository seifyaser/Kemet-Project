import 'package:flutter/material.dart';
import 'package:kemetvision/features/WelcomeScreen/Presentation/views/Widgets/GetStartedButton.dart';
import 'package:kemetvision/features/WelcomeScreen/Presentation/views/Widgets/StartedText.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/ImageStart.png'),
            fit: BoxFit.cover,
          ),
        ),

    
        child: Container(
    
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                Image.asset(
                  'assets/logoStart.png',
                  height: 50,
                ),
              
                     SizedBox(height: 20,),
           
                Startedtext(),
                const Spacer(),
          
                GetStartedButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
