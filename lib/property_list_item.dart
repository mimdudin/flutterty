import 'package:flutter/material.dart';
import './models/nestoria.dart';

class PropertyListItem extends StatelessWidget {
  final Property property;

  PropertyListItem(this.property);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(property.thumbUrl)),
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    property.title,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.subtitle.copyWith(color: Colors.blue),
                  ),
                ),
                SizedBox(height: 3.0),
                Container(
                  child: Text(
                    "By ${property.name}" ?? "Unavailable",
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  child: Text(property.price,
                      style: Theme.of(context).textTheme.subhead),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
