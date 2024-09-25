import 'dart:convert';

class Movies {
    final int id;
    final String name;
    final String username;
    final String email;
    final Address address;

    Movies({
        required this.id,
        required this.name,
        required this.username,
        required this.email,
        required this.address,
    });

    factory Movies.fromRawJson(String str) => Movies.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Movies.fromJson(Map<String, dynamic> json) => Movies(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        address: Address.fromJson(json["address"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "address": address.toJson(),
    };
}

class Address {
    final String street;
    final String city;
    final String state;
    final String zipcode;

    Address({
        required this.street,
        required this.city,
        required this.state,
        required this.zipcode,
    });

    factory Address.fromRawJson(String str) => Address.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        city: json["city"],
        state: json["state"],
        zipcode: json["zipcode"],
    );

    Map<String, dynamic> toJson() => {
        "street": street,
        "city": city,
        "state": state,
        "zipcode": zipcode,
    };
}
