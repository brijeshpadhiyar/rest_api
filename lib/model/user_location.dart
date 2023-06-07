class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinates coordinates;
  final LocationTimezone timezone;
  UserLocation({
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.street,
    required this.timezone,
  });
  factory UserLocation.fromMap(Map<String, dynamic> json) {
    final coordinates = LocationCoordinates.fromMap(json['coordinates']);
    final street = LocationStreet.fromMap(json['street']);
    final timezone = LocationTimezone.fromMap(json['timezone']);
    return UserLocation(
      city: json['city'],
      country: json['country'],
      postcode: json['postcode'].toString(),
      state: json['state'],
      coordinates: coordinates,
      street: street,
      timezone: timezone,
    );
  }
}

class LocationStreet {
  final int number;
  final String name;
  LocationStreet({required this.number, required this.name});

  factory LocationStreet.fromMap(Map<String, dynamic> json) {
    return LocationStreet(
      name: json['name'],
      number: json['number'],
    );
  }
}

class LocationCoordinates {
  final String latitude;
  final String longitude;
  LocationCoordinates({required this.latitude, required this.longitude});

  factory LocationCoordinates.fromMap(Map<String, dynamic> json) {
    return LocationCoordinates(
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }
}

class LocationTimezone {
  final String offSet;
  final String description;
  LocationTimezone({required this.offSet, required this.description});
  factory LocationTimezone.fromMap(Map<String, dynamic> json) {
    return LocationTimezone(
      description: json['description'],
      offSet: json['offSet'],
    );
  }
}
