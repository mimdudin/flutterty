import 'package:flutter/material.dart';
import './scoped-models/property_models.dart';
import './search_bar.dart';
import './property_list_item.dart';

class PropertyList extends StatelessWidget {
  final PropertyModels model;

  PropertyList(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: SearchBar(searchPlace: model.getProperties),
          ),
          model.isLoading
              ? SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()))
              : SliverList(
                  delegate: SliverChildBuilderDelegate((context, i) {
                    var property = model.properties[i];
                    return Container(
                        child: Column(
                      children: <Widget>[
                        PropertyListItem(property),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Divider(height: 0.5, color: Colors.grey))
                      ],
                    ));
                  }, childCount: model.properties.length),
                )
        ],
      ),
    );
  }
}
