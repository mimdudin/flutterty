import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

part 'nestoria.g.dart';

abstract class Nestoria implements Built<Nestoria, NestoriaBuilder> {
  static Serializer<Nestoria> get serializer => _$nestoriaSerializer;

  Response get response;

  Nestoria._();
  factory Nestoria([updates(NestoriaBuilder b)]) = _$Nestoria;
}

abstract class Response implements Built<Response, ResponseBuilder> {
  static Serializer<Response> get serializer => _$responseSerializer;

  @nullable
  BuiltList<Property> get listings;

  @BuiltValueField(wireName: 'total_results')
  int get totalResult;

  Response._();
  factory Response([updates(ResponseBuilder b)]) = _$Response;
}

abstract class Property implements Built<Property, PropertyBuilder> {
  static Serializer<Property> get serializer => _$propertySerializer;

  @nullable
  String get title;

  @nullable
  String get summary;

  @nullable
  @BuiltValueField(wireName: 'bedroom_number')
  int get bedNumber;

  @nullable
  @BuiltValueField(wireName: 'datasource_name')
  String get source;

  @nullable
  @BuiltValueField(wireName: 'img_url')
  String get imgUrl;

  @nullable
  @BuiltValueField(wireName: 'lister_name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'price_formatted')
  String get price;

  @nullable
  @BuiltValueField(wireName: 'thumb_url')
  String get thumbUrl;

  @nullable
  @BuiltValueField(wireName: 'updated_in_days')
  int get updatedAt;


  Property._();
  factory Property([updates(PropertyBuilder b)]) = _$Property;
}