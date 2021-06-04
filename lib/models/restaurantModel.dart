import 'dart:convert';

class Restaurant {
  static List<Restaurant> restaurantFromJson(String str) =>
      List<Restaurant>.from(
          json.decode(str).map((x) => Restaurant.fromJson(x)));

  static String restaurantToJson(List<Restaurant> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

  Restaurant({
    this.id,
    this.uid,
    this.name,
    this.type,
    this.description,
    this.review,
    this.logo,
    this.phoneNumber,
    this.address,
    this.hours,
  });

  int id;
  String uid;
  String name;
  String type;
  String description;
  String review;
  String logo;
  String phoneNumber;
  String address;
  Hours hours;

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        id: json["id"],
        uid: json["uid"],
        name: json["name"],
        type: json["type"],
        description: json["description"],
        review: json["review"],
        logo: json["logo"],
        phoneNumber: json["phone_number"],
        address: json["address"],
        hours: Hours.fromJson(json["hours"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uid": uid,
        "name": name,
        "type": type,
        "description": description,
        "review": review,
        "logo": logo,
        "phone_number": phoneNumber,
        "address": address,
        "hours": hours.toJson(),
      };
}

class Hours {
  Hours({
    this.monday,
    this.tuesday,
    this.wednesday,
    this.thursday,
    this.friday,
    this.saturday,
    this.sunday,
  });

  Day monday;
  Day tuesday;
  Day wednesday;
  Day thursday;
  Day friday;
  Day saturday;
  Day sunday;

  factory Hours.fromJson(Map<String, dynamic> json) => Hours(
        monday: Day.fromJson(json["monday"]),
        tuesday: Day.fromJson(json["tuesday"]),
        wednesday: Day.fromJson(json["wednesday"]),
        thursday: Day.fromJson(json["thursday"]),
        friday: Day.fromJson(json["friday"]),
        saturday: Day.fromJson(json["saturday"]),
        sunday: Day.fromJson(json["sunday"]),
      );

  Map<String, dynamic> toJson() => {
        "monday": monday.toJson(),
        "tuesday": tuesday.toJson(),
        "wednesday": wednesday.toJson(),
        "thursday": thursday.toJson(),
        "friday": friday.toJson(),
        "saturday": saturday.toJson(),
        "sunday": sunday.toJson(),
      };
}

class Day {
  Day({
    this.opensAt,
    this.closesAt,
    this.isClosed,
  });

  String opensAt;
  String closesAt;
  bool isClosed;

  factory Day.fromJson(Map<String, dynamic> json) => Day(
        opensAt: json["opens_at"],
        closesAt: json["closes_at"],
        isClosed: json["is_closed"],
      );

  Map<String, dynamic> toJson() => {
        "opens_at": opensAt,
        "closes_at": closesAt,
        "is_closed": isClosed,
      };
}
