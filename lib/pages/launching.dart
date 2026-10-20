// import 'package:flutter/material.dart';


// class LaunchingWidget extends StatefulWidget{

//   const LaunchingWidget({super.key});

//   @override
//   State<LaunchingWidget> createState() => _LaunchingWidgetState();
// }


// class _LaunchingWidgetState extends State<LaunchingWidget>{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold( 
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Center(
//               child:Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(  
//                     'assets/images/eniadlogocroped.png', width: 200,
//                   ),
//                   SizedBox(height: 30,),
//                   Padding(padding:EdgeInsets.symmetric(horizontal: 40), child: Text("ENIAD BERKANE", style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold, letterSpacing:5),)),
//                   SizedBox(height: 20,),
//                   Text("Ecole Nationale Intelligence Artificielle et du Digital", style: TextStyle(color:Colors.white, fontSize:15, ), textAlign: TextAlign.center,),
//                   SizedBox(height: 100,),
//                   Positioned(bottom:7, left:0, right:0, child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2,)),

//                 ],
//               )
//             ),
//             /*Positioned(bottom:16, left:0, right:0, child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2,)),
//             Positioned(bottom:7, left:0, right:0, child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2,)),
//             Positioned(bottom:0, left:0, right:0, child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2,))
//               fun three bared animation
//             */

//           ]
//         ),
//       ),
//       backgroundColor: const Color(0xFFA0523D),
//     );
//   }
// }


import 'package:flutter/material.dart';
import "./loginpage.dart";

class LaunchingWidget extends StatefulWidget {
  const LaunchingWidget({super.key});

  @override
  State<LaunchingWidget> createState() => _LaunchingWidgetState();
}

class _LaunchingWidgetState extends State<LaunchingWidget> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginPage()));
      // Remplace par ta page de connexion quand elle existera
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA0523D),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/eniadlogocroped.png', width: 150),
                  const SizedBox(height: 40),
                  const Text(
                    "ENIAD BERKANE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "École Nationale de l'Intelligence Artificielle et du Digital",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    ),
                  ),
                  const SizedBox(height: 50),
                  const CircularProgressIndicator(color: Colors.white),
                ],
              ),
            ),
            const Positioned(
              bottom: 16,
              left: 0,
              right: 0,
              child: Text(
                "Université Mohammed Premier",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
