import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final Function searchPlace;

  const SearchBar({Key key, @required this.searchPlace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0))),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                child: Container(
                  child: Icon(Icons.search, color: Colors.black),
                ),
                onTap: () {},
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search...',
                ),
                onSubmitted: (v) => searchPlace(v),
              )),
              InkWell(
                child: Container(
                    child: Icon(
                  Icons.filter_list,
                  color: Colors.black,
                )),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
