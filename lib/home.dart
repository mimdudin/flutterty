import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import './scoped-models/property_models.dart';
import './property_list.dart';

class Home extends StatefulWidget {
  final PropertyModels model;

  Home(this.model);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
    void initState() {
      super.initState();
      widget.model.getProperties('brighton');
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScopedModelDescendant<PropertyModels>(builder: (context, child, model){
        return PropertyList(model);
      },),
    );
  }
}