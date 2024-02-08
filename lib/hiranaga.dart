import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Hiranaga extends StatefulWidget {
  const Hiranaga({Key? key}) : super(key: key);

  @override
  _HiranagaState createState() => _HiranagaState();
}

class _HiranagaState extends State<Hiranaga> {
  late List<Map<String, String>> words;
  late FlutterTts flutterTts;

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
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

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('ja-JP'); // Set language (Japanese)
    await flutterTts.setSpeechRate(0.5); // Set speech rate (optional)
    await flutterTts.setPitch(1.0); // Set pitch (optional)
    await flutterTts.speak(text);
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
                          speak(entry.key + entry.value);
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
