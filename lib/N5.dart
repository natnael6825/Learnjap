// second_page.dart

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import the services package

class N5 extends StatefulWidget {
  const N5({Key? key}) : super(key: key);

  @override
  N5State createState() => N5State();
}

class N5State extends State<N5> {
  late List<Map<String, dynamic>> words;

  @override
  void initState() {
    super.initState();
    loadWords();
  }

  Future<void> loadWords() async {
    // Load JSON data from assets
    String jsonString = await rootBundle.loadString('resource/words.json');
    List<dynamic> jsonData = jsonDecode(jsonString);

    // Convert JSON data to a list of maps
    words = jsonData.cast<Map<String, dynamic>>();
   
    setState(() {}); // Trigger a rebuild
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: SingleChildScrollView(
        
        child:Center(
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Japanese')),
            DataColumn(label: Text('English')),
           
          ],
          rows: words.map((word) {
            return DataRow(
              cells: [
                DataCell(Text((word['content1']+" / "+word['content2']).toString())),
             
                DataCell(Text(word['content4'].toString())),
              ],
            );
          }).toList(),
        ),
      ),

    ),









    );
  }
}
