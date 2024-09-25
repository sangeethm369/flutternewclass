
import 'dart:convert';

class DummyRespose {
    final List<Cart> carts;
    final int total;
    final int skip;
    final int limit;

    DummyRespose({
        required this.carts,
        required this.total,
        required this.skip,
        required this.limit,
    });

    factory DummyRespose.fromRawJson(String str) => DummyRespose.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory DummyRespose.fromJson(Map<String, dynamic> json) => DummyRespose(
        carts: List<Cart>.from(json["carts"].map((x) => Cart.fromJson(x))),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
    );

    Map<String, dynamic> toJson() => {
        "carts": List<dynamic>.from(carts.map((x) => x.toJson())),
        "total": total,
        "skip": skip,
        "limit": limit,
    };
}

class Cart {
    final int id;
    final List<Product> products;
    final double total;
    final double discountedTotal;
    final int userId;
    final int totalProducts;
    final int totalQuantity;

    Cart({
        required this.id,
        required this.products,
        required this.total,
        required this.discountedTotal,
        required this.userId,
        required this.totalProducts,
        required this.totalQuantity,
    });

    factory Cart.fromRawJson(String str) => Cart.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        id: json["id"],
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
        total: json["total"]?.toDouble(),
        discountedTotal: json["discountedTotal"]?.toDouble(),
        userId: json["userId"],
        totalProducts: json["totalProducts"],
        totalQuantity: json["totalQuantity"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "total": total,
        "discountedTotal": discountedTotal,
        "userId": userId,
        "totalProducts": totalProducts,
        "totalQuantity": totalQuantity,
    };
}

class Product {
    final int id;
    final String title;
    final double price;
    final int quantity;
    final double total;
    final double discountPercentage;
    final double discountedTotal;
    final String thumbnail;

    Product({
        required this.id,
        required this.title,
        required this.price,
        required this.quantity,
        required this.total,
        required this.discountPercentage,
        required this.discountedTotal,
        required this.thumbnail,
    });

    factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        quantity: json["quantity"],
        total: json["total"]?.toDouble(),
        discountPercentage: json["discountPercentage"]?.toDouble(),
        discountedTotal: json["discountedTotal"]?.toDouble(),
        thumbnail: json["thumbnail"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "quantity": quantity,
        "total": total,
        "discountPercentage": discountPercentage,
        "discountedTotal": discountedTotal,
        "thumbnail": thumbnail,
    };
}


//local method

class DummyResposeLocal {
    final String email;
    final String id;
    final String name;
    final String phone;

    DummyResposeLocal({
        required this.email,
        required this.id,
        required this.name,
        required this.phone,
    });

    factory DummyResposeLocal.fromRawJson(String str) => DummyResposeLocal.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory DummyResposeLocal.fromJson(Map<String, dynamic> json) => DummyResposeLocal(
        email: json["email"],
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "id": id,
        "name": name,
        "phone": phone,
    };
}