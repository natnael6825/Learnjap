import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class N3 extends StatefulWidget {
  const N3({Key? key}) : super(key: key);

  @override
  _N3State createState() => _N3State();
}

class _N3State extends State<N3> {
  late List<Map<String, dynamic>> words;
  late List<Map<String, dynamic>> filteredWords=[];
  bool isSearching = false;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadWords();
  }

  Future<void> loadWords() async {
    // Load JSON data from assets
    String jsonString = await rootBundle.loadString('resource/N3.json');
    List<dynamic> jsonData = jsonDecode(jsonString);

    // Convert JSON data to a list of maps
    words = jsonData.cast<Map<String, dynamic>>();
    filteredWords = List.from(words);

    setState(() {}); // Trigger a rebuild
  }

  void filterWords(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredWords = List.from(words);
      } else {
        filteredWords = words
            .where((word) =>
                word['content2'].toString().toLowerCase().startsWith(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearching
            ? TextField(
                controller: searchController,
                onChanged: filterWords,
                decoration: const InputDecoration(
                  hintText: 'Enter The Sound In English',
                  border: InputBorder.none,
                ),
              )
            : const Text('N3 List'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isSearching = !isSearching;
                if (!isSearching) {
                  searchController.clear();
                  filterWords('');
                }
              });
            },
            icon: Icon(isSearching ? Icons.close : Icons.search),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Center(
            child: DataTable(
              columnSpacing: 20,
              dataRowHeight: 50,
              headingRowColor: MaterialStateColor.resolveWith((states) => Colors.green[100]!),
              columns: const [
                DataColumn(label: Text('Japanese')),
                DataColumn(label: Text('English')),
              ],
              rows: filteredWords.map((word) {
                return DataRow(
                  cells: [
                    DataCell(
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          (word['content1'] + " / " + word['content2']).toString(),
                        ),
                      ),
                    ),
                    DataCell(
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          word['content4'].toString(),
                        ),
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
