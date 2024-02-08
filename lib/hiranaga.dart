import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';

class Hiranaga extends StatefulWidget {
  const Hiranaga({Key? key}) : super(key: key);

  @override
  _HiranagaState createState() => _HiranagaState();
}

class _HiranagaState extends State<Hiranaga> {
  late List<Map<String, String>> words = [];
  late AudioPlayer audioplayer;

  @override
  void initState() {
    super.initState();
    
  
    loadWords();
  }

  Future<void> loadWords() async {
    // Load JSON data from assets
    String jsonString = await rootBundle.loadString('resource/words2.json');
    List<dynamic> jsonData = jsonDecode(jsonString);

    // Convert JSON data to a list of maps
    words = jsonData.cast<Map<String, dynamic>>().map((e) {
      return e.map((key, value) => MapEntry(key, value.toString()));
    }).toList();

    setState(() {}); // Trigger a rebuild
  }

  Future<void> playAudio(String audioFileName) async {
    final p = AudioCache();
    try {
      
     await  p.play('audio/$audioFileName.mp3');
    
     
    

      
        print('Audio played successfully: $audioFileName');
      
    } catch (e) {
      print('Error playing audios: $audioFileName');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Words'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Color.fromARGB(255, 230, 245, 245),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: words.map((wordMap) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: wordMap.entries.map((entry) {
                      return GestureDetector(
                        onTap: () {
                          String audioFileName = entry.value.toLowerCase();
                          playAudio(((audioFileName).replaceAll("(", ""))
                              .replaceAll(")", ""));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          child: Text(entry.key + entry.value),
                        ),
                      );
                    }).toList(),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
