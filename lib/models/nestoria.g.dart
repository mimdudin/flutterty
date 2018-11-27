// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nestoria.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

Serializer<Nestoria> _$nestoriaSerializer = new _$NestoriaSerializer();
Serializer<Response> _$responseSerializer = new _$ResponseSerializer();
Serializer<Property> _$propertySerializer = new _$PropertySerializer();

class _$NestoriaSerializer implements StructuredSerializer<Nestoria> {
  @override
  final Iterable<Type> types = const [Nestoria, _$Nestoria];
  @override
  final String wireName = 'Nestoria';

  @override
  Iterable serialize(Serializers serializers, Nestoria object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'response',
      serializers.serialize(object.response,
          specifiedType: const FullType(Response)),
    ];

    return result;
  }

  @override
  Nestoria deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NestoriaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'response':
          result.response.replace(serializers.deserialize(value,
              specifiedType: const FullType(Response)) as Response);
          break;
      }
    }

    return result.build();
  }
}

class _$ResponseSerializer implements StructuredSerializer<Response> {
  @override
  final Iterable<Type> types = const [Response, _$Response];
  @override
  final String wireName = 'Response';

  @override
  Iterable serialize(Serializers serializers, Response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'total_results',
      serializers.serialize(object.totalResult,
          specifiedType: const FullType(int)),
    ];
    if (object.listings != null) {
      result
        ..add('listings')
        ..add(serializers.serialize(object.listings,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Property)])));
    }

    return result;
  }

  @override
  Response deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'listings':
          result.listings.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Property)])) as BuiltList);
          break;
        case 'total_results':
          result.totalResult = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PropertySerializer implements StructuredSerializer<Property> {
  @override
  final Iterable<Type> types = const [Property, _$Property];
  @override
  final String wireName = 'Property';

  @override
  Iterable serialize(Serializers serializers, Property object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.summary != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(object.summary,
            specifiedType: const FullType(String)));
    }
    if (object.bedNumber != null) {
      result
        ..add('bedroom_number')
        ..add(serializers.serialize(object.bedNumber,
            specifiedType: const FullType(int)));
    }
    if (object.source != null) {
      result
        ..add('datasource_name')
        ..add(serializers.serialize(object.source,
            specifiedType: const FullType(String)));
    }
    if (object.imgUrl != null) {
      result
        ..add('img_url')
        ..add(serializers.serialize(object.imgUrl,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('lister_name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.price != null) {
      result
        ..add('price_formatted')
        ..add(serializers.serialize(object.price,
            specifiedType: const FullType(String)));
    }
    if (object.thumbUrl != null) {
      result
        ..add('thumb_url')
        ..add(serializers.serialize(object.thumbUrl,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_in_days')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  Property deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PropertyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bedroom_number':
          result.bedNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'datasource_name':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'img_url':
          result.imgUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lister_name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price_formatted':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumb_url':
          result.thumbUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_in_days':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Nestoria extends Nestoria {
  @override
  final Response response;

  factory _$Nestoria([void updates(NestoriaBuilder b)]) =>
      (new NestoriaBuilder()..update(updates)).build();

  _$Nestoria._({this.response}) : super._() {
    if (response == null) {
      throw new BuiltValueNullFieldError('Nestoria', 'response');
    }
  }

  @override
  Nestoria rebuild(void updates(NestoriaBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NestoriaBuilder toBuilder() => new NestoriaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Nestoria && response == other.response;
  }

  @override
  int get hashCode {
    return $jf($jc(0, response.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Nestoria')..add('response', response))
        .toString();
  }
}

class NestoriaBuilder implements Builder<Nestoria, NestoriaBuilder> {
  _$Nestoria _$v;

  ResponseBuilder _response;
  ResponseBuilder get response => _$this._response ??= new ResponseBuilder();
  set response(ResponseBuilder response) => _$this._response = response;

  NestoriaBuilder();

  NestoriaBuilder get _$this {
    if (_$v != null) {
      _response = _$v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Nestoria other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Nestoria;
  }

  @override
  void update(void updates(NestoriaBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Nestoria build() {
    _$Nestoria _$result;
    try {
      _$result = _$v ?? new _$Nestoria._(response: response.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'response';
        response.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Nestoria', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Response extends Response {
  @override
  final BuiltList<Property> listings;
  @override
  final int totalResult;

  factory _$Response([void updates(ResponseBuilder b)]) =>
      (new ResponseBuilder()..update(updates)).build();

  _$Response._({this.listings, this.totalResult}) : super._() {
    if (totalResult == null) {
      throw new BuiltValueNullFieldError('Response', 'totalResult');
    }
  }

  @override
  Response rebuild(void updates(ResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseBuilder toBuilder() => new ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Response &&
        listings == other.listings &&
        totalResult == other.totalResult;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, listings.hashCode), totalResult.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Response')
          ..add('listings', listings)
          ..add('totalResult', totalResult))
        .toString();
  }
}

class ResponseBuilder implements Builder<Response, ResponseBuilder> {
  _$Response _$v;

  ListBuilder<Property> _listings;
  ListBuilder<Property> get listings =>
      _$this._listings ??= new ListBuilder<Property>();
  set listings(ListBuilder<Property> listings) => _$this._listings = listings;

  int _totalResult;
  int get totalResult => _$this._totalResult;
  set totalResult(int totalResult) => _$this._totalResult = totalResult;

  ResponseBuilder();

  ResponseBuilder get _$this {
    if (_$v != null) {
      _listings = _$v.listings?.toBuilder();
      _totalResult = _$v.totalResult;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Response other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Response;
  }

  @override
  void update(void updates(ResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Response build() {
    _$Response _$result;
    try {
      _$result = _$v ??
          new _$Response._(
              listings: _listings?.build(), totalResult: totalResult);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'listings';
        _listings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Property extends Property {
  @override
  final String title;
  @override
  final String summary;
  @override
  final int bedNumber;
  @override
  final String source;
  @override
  final String imgUrl;
  @override
  final String name;
  @override
  final String price;
  @override
  final String thumbUrl;
  @override
  final int updatedAt;

  factory _$Property([void updates(PropertyBuilder b)]) =>
      (new PropertyBuilder()..update(updates)).build();

  _$Property._(
      {this.title,
      this.summary,
      this.bedNumber,
      this.source,
      this.imgUrl,
      this.name,
      this.price,
      this.thumbUrl,
      this.updatedAt})
      : super._();

  @override
  Property rebuild(void updates(PropertyBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PropertyBuilder toBuilder() => new PropertyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Property &&
        title == other.title &&
        summary == other.summary &&
        bedNumber == other.bedNumber &&
        source == other.source &&
        imgUrl == other.imgUrl &&
        name == other.name &&
        price == other.price &&
        thumbUrl == other.thumbUrl &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, title.hashCode), summary.hashCode),
                                bedNumber.hashCode),
                            source.hashCode),
                        imgUrl.hashCode),
                    name.hashCode),
                price.hashCode),
            thumbUrl.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Property')
          ..add('title', title)
          ..add('summary', summary)
          ..add('bedNumber', bedNumber)
          ..add('source', source)
          ..add('imgUrl', imgUrl)
          ..add('name', name)
          ..add('price', price)
          ..add('thumbUrl', thumbUrl)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PropertyBuilder implements Builder<Property, PropertyBuilder> {
  _$Property _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _summary;
  String get summary => _$this._summary;
  set summary(String summary) => _$this._summary = summary;

  int _bedNumber;
  int get bedNumber => _$this._bedNumber;
  set bedNumber(int bedNumber) => _$this._bedNumber = bedNumber;

  String _source;
  String get source => _$this._source;
  set source(String source) => _$this._source = source;

  String _imgUrl;
  String get imgUrl => _$this._imgUrl;
  set imgUrl(String imgUrl) => _$this._imgUrl = imgUrl;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  String _thumbUrl;
  String get thumbUrl => _$this._thumbUrl;
  set thumbUrl(String thumbUrl) => _$this._thumbUrl = thumbUrl;

  int _updatedAt;
  int get updatedAt => _$this._updatedAt;
  set updatedAt(int updatedAt) => _$this._updatedAt = updatedAt;

  PropertyBuilder();

  PropertyBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _summary = _$v.summary;
      _bedNumber = _$v.bedNumber;
      _source = _$v.source;
      _imgUrl = _$v.imgUrl;
      _name = _$v.name;
      _price = _$v.price;
      _thumbUrl = _$v.thumbUrl;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Property other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Property;
  }

  @override
  void update(void updates(PropertyBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Property build() {
    final _$result = _$v ??
        new _$Property._(
            title: title,
            summary: summary,
            bedNumber: bedNumber,
            source: source,
            imgUrl: imgUrl,
            name: name,
            price: price,
            thumbUrl: thumbUrl,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}
