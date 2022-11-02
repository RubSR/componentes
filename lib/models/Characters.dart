/// id : 1
/// name : "Rick Sanchez"
/// status : "Alive"
/// species : "Human"
/// type : ""
/// gender : "Male"
/// origin : {"name":"Earth (C-137)","url":"https://rickandmortyapi.com/api/location/1"}
/// location : {"name":"Citadel of Ricks","url":"https://rickandmortyapi.com/api/location/3"}
/// image : "https://rickandmortyapi.com/api/character/avatar/1.jpeg"
/// episode : ["https://rickandmortyapi.com/api/episode/1","https://rickandmortyapi.com/api/episode/2","https://rickandmortyapi.com/api/episode/3","https://rickandmortyapi.com/api/episode/4","https://rickandmortyapi.com/api/episode/5","https://rickandmortyapi.com/api/episode/6","https://rickandmortyapi.com/api/episode/7","https://rickandmortyapi.com/api/episode/8","https://rickandmortyapi.com/api/episode/9","https://rickandmortyapi.com/api/episode/10","https://rickandmortyapi.com/api/episode/11","https://rickandmortyapi.com/api/episode/12","https://rickandmortyapi.com/api/episode/13","https://rickandmortyapi.com/api/episode/14","https://rickandmortyapi.com/api/episode/15","https://rickandmortyapi.com/api/episode/16","https://rickandmortyapi.com/api/episode/17","https://rickandmortyapi.com/api/episode/18","https://rickandmortyapi.com/api/episode/19","https://rickandmortyapi.com/api/episode/20","https://rickandmortyapi.com/api/episode/21","https://rickandmortyapi.com/api/episode/22","https://rickandmortyapi.com/api/episode/23","https://rickandmortyapi.com/api/episode/24","https://rickandmortyapi.com/api/episode/25","https://rickandmortyapi.com/api/episode/26","https://rickandmortyapi.com/api/episode/27","https://rickandmortyapi.com/api/episode/28","https://rickandmortyapi.com/api/episode/29","https://rickandmortyapi.com/api/episode/30","https://rickandmortyapi.com/api/episode/31","https://rickandmortyapi.com/api/episode/32","https://rickandmortyapi.com/api/episode/33","https://rickandmortyapi.com/api/episode/34","https://rickandmortyapi.com/api/episode/35","https://rickandmortyapi.com/api/episode/36","https://rickandmortyapi.com/api/episode/37","https://rickandmortyapi.com/api/episode/38","https://rickandmortyapi.com/api/episode/39","https://rickandmortyapi.com/api/episode/40","https://rickandmortyapi.com/api/episode/41","https://rickandmortyapi.com/api/episode/42","https://rickandmortyapi.com/api/episode/43","https://rickandmortyapi.com/api/episode/44","https://rickandmortyapi.com/api/episode/45","https://rickandmortyapi.com/api/episode/46","https://rickandmortyapi.com/api/episode/47","https://rickandmortyapi.com/api/episode/48","https://rickandmortyapi.com/api/episode/49","https://rickandmortyapi.com/api/episode/50","https://rickandmortyapi.com/api/episode/51"]
/// url : "https://rickandmortyapi.com/api/character/1"
/// created : "2017-11-04T18:48:46.250Z"

class Character {
  Character({
      num? id, 
      String? name, 
      String? status, 
      String? species, 
      String? type, 
      String? gender, 
      Origin? origin, 
      Location? location, 
      String? image, 
      List<String>? episode, 
      String? url, 
      String? created,}){
    _id = id;
    _name = name;
    _status = status;
    _species = species;
    _type = type;
    _gender = gender;
    _origin = origin;
    _location = location;
    _image = image;
    _episode = episode;
    _url = url;
    _created = created;
}

//Constructor nombrado que sirve para pasar de json a objeto
  Character.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _status = json['status'];
    _species = json['species'];
    _type = json['type'];
    _gender = json['gender'];
    _origin = json['origin'] != null ? Origin.fromJson(json['origin']) : null;
    _location = json['location'] != null ? Location.fromJson(json['location']) : null;
    _image = json['image'];
    _episode = json['episode'] != null ? json['episode'].cast<String>() : [];
    _url = json['url'];
    _created = json['created'];
  }
  num? _id;
  String? _name;
  String? _status;
  String? _species;
  String? _type;
  String? _gender;
  Origin? _origin;
  Location? _location;
  String? _image;
  List<String>? _episode;
  String? _url;
  String? _created;

  num? get id => _id;
  String? get name => _name;
  String? get status => _status;
  String? get species => _species;
  String? get type => _type;
  String? get gender => _gender;
  Origin? get origin => _origin;
  Location? get location => _location;
  String? get image => _image;
  List<String>? get episode => _episode;
  String? get url => _url;
  String? get created => _created;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['status'] = _status;
    map['species'] = _species;
    map['type'] = _type;
    map['gender'] = _gender;
    if (_origin != null) {
      map['origin'] = _origin?.toJson();
    }
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    map['image'] = _image;
    map['episode'] = _episode;
    map['url'] = _url;
    map['created'] = _created;
    return map;
  }

}

/// name : "Citadel of Ricks"
/// url : "https://rickandmortyapi.com/api/location/3"

class Location {
  Location({
      String? name, 
      String? url,}){
    _name = name;
    _url = url;
}

  Location.fromJson(dynamic json) {
    _name = json['name'];
    _url = json['url'];
  }
  String? _name;
  String? _url;

  String? get name => _name;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }

}

/// name : "Earth (C-137)"
/// url : "https://rickandmortyapi.com/api/location/1"

class Origin {
  //Constructor
  Origin({
      String? name, 
      String? url,}){
    _name = name;
    _url = url;
}
  //Constructor nombrado que parsea de json a objeto
  Origin.fromJson(dynamic json) {
    _name = json['name'];
    _url = json['url'];
  }

  //Propiedades
  String? _name;
  String? _url;

  String? get name => _name;
  String? get url => _url;

  //Metodo para pasar el objeto a Json
  //Json de dart necesita un map para parsear a JSON-> Jsonencode(map)
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }

}