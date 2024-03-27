// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

List<UserModel> userModelListFromJson(List<dynamic> str) => List<UserModel>.from((str).map((x) => UserModel.fromJson(x)));

UserModel userModelFromJson(dynamic str) => UserModel.fromJson(str);

String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  final int? id;
  final String? firstname;
  final String? lastname;
  final String? email;
  //final DateTime? birthDate;
  final Login? login;
  //final Address? address;
  //final Phone? phone;
  final String? website;
  final Company? company;

  UserModel({
    this.id,
    this.firstname,
    this.lastname,
    this.email,
    //this.birthDate,
    this.login,
    //this.address,
    //this.phone,
    this.website,
    this.company,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        firstname: json["name"],
        lastname: json["username"],
        email: json["email"],
        //birthDate: json["birthDate"] == null ? null : DateTime.parse(json["birthDate"]),
        login: json["login"] == null ? null : Login.fromJson(json["login"]),
        //address: json["address"] == null ? null : Address.fromJson(json["address"]),
        //phone: phoneValues.map[json["phone"]]!,
        website: json["website"],
        company: json["company"] == null ? null : Company.fromJson(json["company"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": firstname,
        "username": lastname,
        "email": email,
        //"birthDate":
        //    "${birthDate!.year.toString().padLeft(4, '0')}-${birthDate!.month.toString().padLeft(2, '0')}-${birthDate!.day.toString().padLeft(2, '0')}",
        "login": login?.toJson(),
        //"address": address?.toJson(),
        //"phone": phoneValues.reverse[phone],
        "website": website,
        "company": company?.toJson(),
      };
}

class Address {
  final String? street;
  final String? suite;
  final City? city;
  final Zipcode? zipcode;
  final Geo? geo;

  Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        suite: json["suite"],
        city: cityValues.map[json["city"]]!,
        zipcode: zipcodeValues.map[json["zipcode"]]!,
        geo: json["geo"] == null ? null : Geo.fromJson(json["geo"]),
      );

  Map<String, dynamic> toJson() => {
        "street": street,
        "suite": suite,
        "city": cityValues.reverse[city],
        "zipcode": zipcodeValues.reverse[zipcode],
        "geo": geo?.toJson(),
      };
}

enum City { ANYTOWN }

final cityValues = EnumValues({"Anytown": City.ANYTOWN});

class Geo {
  final String? lat;
  final String? lng;

  Geo({
    this.lat,
    this.lng,
  });

  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
        lat: json["lat"],
        lng: json["lng"],
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
      };
}

enum Zipcode { THE_123456789 }

final zipcodeValues = EnumValues({"12345-6789": Zipcode.THE_123456789});

class Company {
  final String? name;
  final String? catchPhrase;
  final String? bs;

  Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        name: json["name"],
        catchPhrase: json["catchPhrase"],
        bs: json["bs"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "catchPhrase": catchPhrase,
        "bs": bs,
      };
}

class Login {
  final String? uuid;
  final String? username;
  final Password? password;
  final Md5? md5;
  final Sha1? sha1;
  final DateTime? registered;

  Login({
    this.uuid,
    this.username,
    this.password,
    this.md5,
    this.sha1,
    this.registered,
  });

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        uuid: json["uuid"],
        username: json["username"],
        password: passwordValues.map[json["password"]]!,
        md5: md5Values.map[json["md5"]]!,
        sha1: sha1Values.map[json["sha1"]]!,
        registered: json["registered"] == null ? null : DateTime.parse(json["registered"]),
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "username": username,
        "password": passwordValues.reverse[password],
        "md5": md5Values.reverse[md5],
        "sha1": sha1Values.reverse[sha1],
        "registered": registered?.toIso8601String(),
      };
}

enum Md5 { C1328472_C5794_A25723600_F71_C1_B4586 }

final md5Values = EnumValues({"c1328472c5794a25723600f71c1b4586": Md5.C1328472_C5794_A25723600_F71_C1_B4586});

enum Password { JSONPLACEHOLDER_ORG }

final passwordValues = EnumValues({"jsonplaceholder.org": Password.JSONPLACEHOLDER_ORG});

enum Sha1 { THE_35544_A31_CC19_BD6520_AF116554873167117_F4_D94 }

final sha1Values = EnumValues({"35544a31cc19bd6520af116554873167117f4d94": Sha1.THE_35544_A31_CC19_BD6520_AF116554873167117_F4_D94});

enum Phone { THE_5555551234, THE_5555553456, THE_5555555678, THE_5555556789, THE_5555559012 }

final phoneValues = EnumValues({
  "(555) 555-1234": Phone.THE_5555551234,
  "(555) 555-3456": Phone.THE_5555553456,
  "(555) 555-5678": Phone.THE_5555555678,
  "(555) 555-6789": Phone.THE_5555556789,
  "(555) 555-9012": Phone.THE_5555559012
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
