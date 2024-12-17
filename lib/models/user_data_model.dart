// ignore_for_file: no_leading_underscores_for_local_identifiers

class UserDataModel {
  List<Results>? results;
  Info? info;

  UserDataModel({this.results, this.info});

  UserDataModel.fromJson(Map<String, dynamic> json) {
    results = json["results"] == null
        ? null
        : (json["results"] as List).map((e) => Results.fromJson(e)).toList();
    info = json["info"] == null ? null : Info.fromJson(json["info"]);
  }

  static List<UserDataModel> fromList(List<Map<String, dynamic>> list) {
    return list.map(UserDataModel.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (results != null) {
      _data["results"] = results?.map((e) => e.toJson()).toList();
    }
    if (info != null) {
      _data["info"] = info?.toJson();
    }
    return _data;
  }
}

class Info {
  String? seed;
  int? results;
  int? page;
  String? version;

  Info({this.seed, this.results, this.page, this.version});

  Info.fromJson(Map<String, dynamic> json) {
    seed = json["seed"];
    results = json["results"];
    page = json["page"];
    version = json["version"];
  }

  static List<Info> fromList(List<Map<String, dynamic>> list) {
    return list.map(Info.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["seed"] = seed;
    _data["results"] = results;
    _data["page"] = page;
    _data["version"] = version;
    return _data;
  }
}

class Results {
  String? gender;
  Name? name;
  Location? location;
  String? email;
  Login? login;
  Dob? dob;
  Registered? registered;
  String? phone;
  String? cell;
  Id? id;
  Picture? picture;
  String? nat;

  Results(
      {this.gender,
      this.name,
      this.location,
      this.email,
      this.login,
      this.dob,
      this.registered,
      this.phone,
      this.cell,
      this.id,
      this.picture,
      this.nat});

  Results.fromJson(Map<String, dynamic> json) {
    gender = json["gender"];
    name = json["name"] == null ? null : Name.fromJson(json["name"]);
    location =
        json["location"] == null ? null : Location.fromJson(json["location"]);
    email = json["email"];
    login = json["login"] == null ? null : Login.fromJson(json["login"]);
    dob = json["dob"] == null ? null : Dob.fromJson(json["dob"]);
    registered = json["registered"] == null
        ? null
        : Registered.fromJson(json["registered"]);
    phone = json["phone"];
    cell = json["cell"];
    id = json["id"] == null ? null : Id.fromJson(json["id"]);
    picture =
        json["picture"] == null ? null : Picture.fromJson(json["picture"]);
    nat = json["nat"];
  }

  static List<Results> fromList(List<Map<String, dynamic>> list) {
    return list.map(Results.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["gender"] = gender;
    if (name != null) {
      _data["name"] = name?.toJson();
    }
    if (location != null) {
      _data["location"] = location?.toJson();
    }
    _data["email"] = email;
    if (login != null) {
      _data["login"] = login?.toJson();
    }
    if (dob != null) {
      _data["dob"] = dob?.toJson();
    }
    if (registered != null) {
      _data["registered"] = registered?.toJson();
    }
    _data["phone"] = phone;
    _data["cell"] = cell;
    if (id != null) {
      _data["id"] = id?.toJson();
    }
    if (picture != null) {
      _data["picture"] = picture?.toJson();
    }
    _data["nat"] = nat;
    return _data;
  }
}

class Picture {
  String? large;
  String? medium;
  String? thumbnail;

  Picture({this.large, this.medium, this.thumbnail});

  Picture.fromJson(Map<String, dynamic> json) {
    large = json["large"];
    medium = json["medium"];
    thumbnail = json["thumbnail"];
  }

  static List<Picture> fromList(List<Map<String, dynamic>> list) {
    return list.map(Picture.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large"] = large;
    _data["medium"] = medium;
    _data["thumbnail"] = thumbnail;
    return _data;
  }
}

class Id {
  String? name;
  dynamic value;

  Id({this.name, this.value});

  Id.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    value = json["value"];
  }

  static List<Id> fromList(List<Map<String, dynamic>> list) {
    return list.map(Id.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["value"] = value;
    return _data;
  }
}

class Registered {
  String? date;
  int? age;

  Registered({this.date, this.age});

  Registered.fromJson(Map<String, dynamic> json) {
    date = json["date"];
    age = json["age"];
  }

  static List<Registered> fromList(List<Map<String, dynamic>> list) {
    return list.map(Registered.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["date"] = date;
    _data["age"] = age;
    return _data;
  }
}

class Dob {
  String? date;
  int? age;

  Dob({this.date, this.age});

  Dob.fromJson(Map<String, dynamic> json) {
    date = json["date"];
    age = json["age"];
  }

  static List<Dob> fromList(List<Map<String, dynamic>> list) {
    return list.map(Dob.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["date"] = date;
    _data["age"] = age;
    return _data;
  }
}

class Login {
  String? uuid;
  String? username;
  String? password;
  String? salt;
  String? md5;
  String? sha1;
  String? sha256;

  Login(
      {this.uuid,
      this.username,
      this.password,
      this.salt,
      this.md5,
      this.sha1,
      this.sha256});

  Login.fromJson(Map<String, dynamic> json) {
    uuid = json["uuid"];
    username = json["username"];
    password = json["password"];
    salt = json["salt"];
    md5 = json["md5"];
    sha1 = json["sha1"];
    sha256 = json["sha256"];
  }

  static List<Login> fromList(List<Map<String, dynamic>> list) {
    return list.map(Login.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["uuid"] = uuid;
    _data["username"] = username;
    _data["password"] = password;
    _data["salt"] = salt;
    _data["md5"] = md5;
    _data["sha1"] = sha1;
    _data["sha256"] = sha256;
    return _data;
  }
}

class Location {
  Street? street;
  String? city;
  String? state;
  String? country;
  int? postcode;
  Coordinates? coordinates;
  Timezone? timezone;

  Location(
      {this.street,
      this.city,
      this.state,
      this.country,
      this.postcode,
      this.coordinates,
      this.timezone});

  Location.fromJson(Map<String, dynamic> json) {
    street = json["street"] == null ? null : Street.fromJson(json["street"]);
    city = json["city"];
    state = json["state"];
    country = json["country"];
    postcode = json["postcode"];
    coordinates = json["coordinates"] == null
        ? null
        : Coordinates.fromJson(json["coordinates"]);
    timezone =
        json["timezone"] == null ? null : Timezone.fromJson(json["timezone"]);
  }

  static List<Location> fromList(List<Map<String, dynamic>> list) {
    return list.map(Location.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (street != null) {
      _data["street"] = street?.toJson();
    }
    _data["city"] = city;
    _data["state"] = state;
    _data["country"] = country;
    _data["postcode"] = postcode;
    if (coordinates != null) {
      _data["coordinates"] = coordinates?.toJson();
    }
    if (timezone != null) {
      _data["timezone"] = timezone?.toJson();
    }
    return _data;
  }
}

class Timezone {
  String? offset;
  String? description;

  Timezone({this.offset, this.description});

  Timezone.fromJson(Map<String, dynamic> json) {
    offset = json["offset"];
    description = json["description"];
  }

  static List<Timezone> fromList(List<Map<String, dynamic>> list) {
    return list.map(Timezone.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["offset"] = offset;
    _data["description"] = description;
    return _data;
  }
}

class Coordinates {
  String? latitude;
  String? longitude;

  Coordinates({this.latitude, this.longitude});

  Coordinates.fromJson(Map<String, dynamic> json) {
    latitude = json["latitude"];
    longitude = json["longitude"];
  }

  static List<Coordinates> fromList(List<Map<String, dynamic>> list) {
    return list.map(Coordinates.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["latitude"] = latitude;
    _data["longitude"] = longitude;
    return _data;
  }
}

class Street {
  int? number;
  String? name;

  Street({this.number, this.name});

  Street.fromJson(Map<String, dynamic> json) {
    number = json["number"];
    name = json["name"];
  }

  static List<Street> fromList(List<Map<String, dynamic>> list) {
    return list.map(Street.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["number"] = number;
    _data["name"] = name;
    return _data;
  }
}

class Name {
  String? title;
  String? first;
  String? last;

  Name({this.title, this.first, this.last});

  Name.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    first = json["first"];
    last = json["last"];
  }

  static List<Name> fromList(List<Map<String, dynamic>> list) {
    return list.map(Name.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["title"] = title;
    _data["first"] = first;
    _data["last"] = last;
    return _data;
  }
}
