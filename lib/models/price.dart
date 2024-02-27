class Price {
  final String id;
  final String unit;
  final double price;

  Price({required this.id, required this.unit, required this.price});

  Price.fromMap(Map<String, dynamic> map)
      : this(
          id: map['id'],
          unit: map['unit'],
          price: map['price'],
        );

  Map<String, dynamic> asMap() => {
        'id': id,
        'unit': unit,
        'price': price,
      };
}

class PriceBundle {
  final String id;
  final Price price;
  final List<Price> bundle;

  PriceBundle({required this.id, required this.price, required this.bundle});

  PriceBundle.fromMap(Map<String, dynamic> map)
      : this(
            id: map['id'],
            price: Price.fromMap(map['price']),
            bundle: map['bundle'].map((e) => Price.fromMap(e)));

  Map<String, dynamic> asMap() => {
        'id': id,
        'price': price.asMap(),
        'bundle': bundle.map((e) => e.asMap())
      };
}
