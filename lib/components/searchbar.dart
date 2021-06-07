import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AnimSearchBar(

        prefixIcon: Icon(Icons.search, color: Colors.grey,),
        suffixIcon: Icon(Icons.cancel, color: Colors.grey),
        width: MediaQuery.of(context).size.width * 0.95,
        textController: searchController,
        rtl: true,
        closeSearchOnSuffixTap: true,
        onSuffixTap: () {
          setState(() {
            searchController.clear();
          });
        }
    );
  }
}
