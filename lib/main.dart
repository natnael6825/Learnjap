import 'package:flutter/material.dart';
import 'N5.dart';

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
          child: Column(
            children: <Widget>[
              Center(

                
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: ElevatedButton(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
