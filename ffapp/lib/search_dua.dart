// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/screens/Navigation_switch.dart';
import 'package:fyp/app/screens/screens_list.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchQuery = "";
  List<String> _searchResults = [];

  void _onSearchTextChanged(String query) {
    setState(() {
      searchQuery = query;
      _searchResults = list1.keys
          .where((key) => key.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void _onSuggestionSelected(String suggestion) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ScreenFactory.createScreen(suggestion),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showtitle: true,
        onleadingtap: () {
          Navigator.pop(context);
        },
        actions: const [],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  onChanged: _onSearchTextChanged,
                  decoration: const InputDecoration(
                    hintText: 'Search Dua Name',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_searchResults[index]),
                    onTap: () => _onSuggestionSelected(_searchResults[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
