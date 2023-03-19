// To parse this JSON data, do
//
//     final property = propertyFromJson(jsonString);

import 'dart:convert';

List<Property> propertyFromJson(String str) => List<Property>.from(json.decode(str).map((x) => Property.fromJson(x)));

String propertyToJson(List<Property> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Property {
    Property({
        required this.id,
        required this.country,
        required this.state,
        required this.city,
        required this.propertyname,
        required this.status,
        required this.propertydesc,
        required this.propertytype,
        required this.subtype,
        required this.prize,
        required this.image,
        required this.v,
    });

    String id;
    Country country;
    State state;
    City city;
    String propertyname;
    Status status;
    String propertydesc;
    Propertytype propertytype;
    Subtype subtype;
    int prize;
    String image;
    int v;

    factory Property.fromJson(Map<String, dynamic> json) => Property(
        id: json["_id"],
        country: countryValues.map[json["country"]]!,
        state: stateValues.map[json["State"]]!,
        city: cityValues.map[json["city"]]!,
        propertyname: json["Propertyname"],
        status: statusValues.map[json["Status"]]!,
        propertydesc: json["Propertydesc"],
        propertytype: propertytypeValues.map[json["propertytype"]]!,
        subtype: subtypeValues.map[json["subtype"]]!,
        prize: json["prize"],
        image: json["image"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "country": countryValues.reverse[country],
        "State": stateValues.reverse[state],
        "city": cityValues.reverse[city],
        "Propertyname": propertyname,
        "Status": statusValues.reverse[status],
        "Propertydesc": propertydesc,
        "propertytype": propertytypeValues.reverse[propertytype],
        "subtype": subtypeValues.reverse[subtype],
        "prize": prize,
        "image": image,
        "__v": v,
    };
}

enum City { KARAD, PUNE }

final cityValues = EnumValues({
    "Karad": City.KARAD,
    "Pune": City.PUNE
});

enum Country { INDIA }

final countryValues = EnumValues({
    "India": Country.INDIA
});

enum Propertytype { OFFICESPACE, DEDICATED_DESK, RESTAURANT, EDUCATIONAL, RRR }

final propertytypeValues = EnumValues({
    "Dedicated Desk": Propertytype.DEDICATED_DESK,
    "Educational": Propertytype.EDUCATIONAL,
    "Officespace": Propertytype.OFFICESPACE,
    "Restaurant": Propertytype.RESTAURANT,
    "rrr": Propertytype.RRR
});

enum State { MAHARASHTRA, PUNE }

final stateValues = EnumValues({
    "Maharashtra": State.MAHARASHTRA,
    "Pune": State.PUNE
});

enum Status { NOT_BOOKED, STATUS_NOT_BOOKED }

final statusValues = EnumValues({
    "Not Booked": Status.NOT_BOOKED,
    "not booked": Status.STATUS_NOT_BOOKED
});

enum Subtype { RENTAL, AAA, DAD }

final subtypeValues = EnumValues({
    "aaa": Subtype.AAA,
    "dad": Subtype.DAD,
    "Rental": Subtype.RENTAL
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
