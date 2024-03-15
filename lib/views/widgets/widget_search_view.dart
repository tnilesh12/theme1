import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget SearchView(
    BuildContext context, String searchTxt, Function() onSearchTap) {
  return Container(
    margin: const EdgeInsets.all(15),
    child: TextField(
      readOnly: true,
      onTap: () {
        onSearchTap();
      },
      decoration: InputDecoration(
        iconColor: Colors.yellow,
        enabledBorder: const OutlineInputBorder(
          // width: 0.0 produces a thin "hairline" border
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        focusedBorder: const OutlineInputBorder(
          // width: 0.0 produces a thin "hairline" border
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        hintText: searchTxt,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.black),
        contentPadding: EdgeInsets.fromLTRB(20, 0, 12, 0),
        suffixIcon: Icon(
          Icons.search,
          color: Colors.black,
        ),
      ),
    ),
  );
}
