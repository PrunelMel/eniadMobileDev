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
//       body: Center(
//         child:Column(
//           children: [
//             SizedBox(height: 100,),
//             Image.asset(  
//               'assets/images/eniadlogocroped.png',
//             ),
//             SizedBox(height:100,),
//             Text("ENIAD BERKANE", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, letterSpacing:5),),
//             SizedBox(height:40),
//             Text("Ecole Nationale Intelligence Artificielle et du Digital", style: TextStyle(color:Colors.white, fontSize:25, ), textAlign: TextAlign.center,),
//             SizedBox(height:100),
//             CircularProgressIndicator(color:Colors.white,)
//           ],
//         )
//       ),
//       backgroundColor: Color.fromARGB(255, 105, 27, 5),
//     );
//   }
// }


import 'package:flutter/material.dart';

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
      // Remplace par ta page de connexion quand elle existera
      // Navigator.pushReplacement(context,
      //   MaterialPageRoute(builder: (_) => const LoginPage()));
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
