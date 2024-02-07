import 'package:flutter/material.dart';
import 'N5.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget Tree',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Main(),
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
        title: const Text('Main'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: ElevatedButton(
                  onPressed: () {
            


          
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  N5()));
          




                  },


                  style: ElevatedButton.styleFrom(

                    backgroundColor:  Colors.black87,
                    padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),

                    shadowColor: Colors.red,
                    elevation: 15,
                    

                    
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),




                  child: const Text("Check NLPT N5 words"),







                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
