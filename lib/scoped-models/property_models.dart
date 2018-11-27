import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import '../models/nestoria.dart';
import '../models/serializers.dart';

class PropertyModels extends Model {
  List<Property> _properties = [];
  List<Property> get properties => _properties;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<dynamic> getData(String place) async {
    String uri =
        'https://api.nestoria.co.uk/api?encoding=json&pretty=1&action=search_listings&country=uk&listing_type=buy&place_name=$place';
    var response = await http.get(Uri.encodeFull(uri));
    return json.decode(response.body);
  }

  Future getProperties(String place) async {
    _isLoading = true;
    notifyListeners();

    var responseData = await getData(place);

    Nestoria nestoria =
        serializers.deserializeWith(Nestoria.serializer, responseData);

    _properties =
        nestoria.response.listings.map((property) => property).toList();

    _isLoading = false;
    notifyListeners();
  }
}
