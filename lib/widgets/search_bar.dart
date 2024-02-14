import 'package:flutter/material.dart';
import 'package:whatsapp_clone_responsive_ui/colors.dart';

class SearchBarItem extends StatefulWidget {
  const SearchBarItem({super.key});

  @override
  State<SearchBarItem> createState() => _SearchBarItemState();
}

class _SearchBarItemState extends State<SearchBarItem> {
  var icon = Icons.search;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.09,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.30 * 0.80,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: searchBarColor,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: GestureDetector(
                    child: Icon(icon, size: 20),
                    onTap: () {
                      setState(() {
                        icon == Icons.search
                            ? icon = Icons.arrow_back
                            : icon = Icons.search;
                      });
                    },
                  ),
                ),
                hintStyle: const TextStyle(fontSize: 14),
                hintText: 'Search or start new chat',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list))
        ],
      ),
    );
  }
}
