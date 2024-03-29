import 'package:flutter/material.dart';
import 'package:learnjap/N2.dart';
import 'package:learnjap/N3.dart';
import 'N5.dart';
import 'N4.dart';
import 'Hiranaga.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget Tree',
      home:  Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,

        title: const Text('Main'),
      ),
      body: Container(
       color: const Color.fromARGB(255, 230, 245, 245),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [


SizedBox(height: 40,),

ElevatedButton(
                    onPressed: () {
              
        
        
            
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  const Hiranaga()));
            
        
        
        
        
                    },
        
        
                    style: ElevatedButton.styleFrom(
        
                      backgroundColor:  const Color.fromARGB(221, 110, 205, 232),
                      padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
        foregroundColor:const Color.fromARGB(221, 255, 255, 255),

                      shadowColor: Colors.red,
                      elevation: 15,
                      
        
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      textStyle: const TextStyle(color: Color.fromARGB(255, 251, 251, 251),fontSize: 20,fontWeight:FontWeight.bold), // Change text color
                    ),
        
        
        
        
                    child: const Text("Hiranaga Alphabets"),
        
        
        
        
        
        
        
                    
                  ),
SizedBox(height: 40,),




                  ElevatedButton(
                    onPressed: () {
              
        
        
            
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  const N5()));
            
        
        
        
        
                    },
        
        
                    style: ElevatedButton.styleFrom(
        
                      backgroundColor:  const Color.fromARGB(221, 110, 205, 232),
                      padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
        foregroundColor:const Color.fromARGB(221, 255, 255, 255),

                      shadowColor: Colors.red,
                      elevation: 15,
                      
        
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      textStyle: const TextStyle(color: Color.fromARGB(255, 251, 251, 251),fontSize: 20,fontWeight:FontWeight.bold), // Change text color
                    ),
        
        
        
        
                    child: const Text("Check NLPT N5 words"),
        
        
        
        
        
        
        
                    
                  ),




SizedBox(height: 40,),

                  ElevatedButton(
                    onPressed: () {
              
        
        
            
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  const N4()));
            
        
        
        
        
                    },
        
        
                    style: ElevatedButton.styleFrom(
        
                      backgroundColor:  const Color.fromARGB(221, 110, 205, 232),
                      padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
        foregroundColor:const Color.fromARGB(221, 255, 255, 255),

                      shadowColor: Colors.red,
                      elevation: 15,
                      
        
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      textStyle: const TextStyle(color: Color.fromARGB(255, 251, 251, 251),fontSize: 20,fontWeight:FontWeight.bold), // Change text color
                    ),
        
        
        
        
                    child: const Text("Check NLPT N4 words"),
        
        
        
        
        
        
        
                    
                  ),




SizedBox(height: 40,),



                  ElevatedButton(
                    onPressed: () {
              
        
        
            
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  const N3()));
            
        
        
        
        
                    },
        
        
                    style: ElevatedButton.styleFrom(
        
                      backgroundColor:  const Color.fromARGB(221, 110, 205, 232),
                      padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
        foregroundColor:const Color.fromARGB(221, 255, 255, 255),

                      shadowColor: Colors.red,
                      elevation: 15,
                      
        
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      textStyle: const TextStyle(color: Color.fromARGB(255, 251, 251, 251),fontSize: 20,fontWeight:FontWeight.bold), // Change text color
                    ),
        
        
        
        
                    child: const Text("Check NLPT N3 words"),
        
        
        
        
        
        
        
                    
                  ),




SizedBox(height: 40,),



                  ElevatedButton(
                    onPressed: () {
              
        
        
            
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  const N2()));
            
        
        
        
        
                    },
        
        
                    style: ElevatedButton.styleFrom(
        
                      backgroundColor:  const Color.fromARGB(221, 110, 205, 232),
                      padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
        foregroundColor:const Color.fromARGB(221, 255, 255, 255),

                      shadowColor: Colors.red,
                      elevation: 15,
                      
        
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      textStyle: const TextStyle(color: Color.fromARGB(255, 251, 251, 251),fontSize: 20,fontWeight:FontWeight.bold), // Change text color
                    ),
        
        
        
        
                    child: const Text("Check NLPT N2 words"),
        
        
        
        
        
        
        
                    
                  ),











              ],
            ),
          ),
        ),
      ),
    );
  }
}
