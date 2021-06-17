/// id : 2014422
/// width : 3024
/// height : 3024
/// url : "https://www.pexels.com/photo/brown-rocks-during-golden-hour-2014422/"
/// photographer : "Joey Farina"
/// photographer_url : "https://www.pexels.com/@joey"
/// photographer_id : 680589
/// avg_color : "#978E82"
/// src : {"original":"https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg","large2x":"https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940","large":"https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&h=650&w=940","medium":"https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&h=350","small":"https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&h=130","portrait":"https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800","landscape":"https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200","tiny":"https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"}

class ItemModel {
  int id;
  int width;
  int height;
  String url;
  String photographer;
  String photographerUrl;
  int photographerId;
  String avgColor;
  Src src;

  ItemModel({
      this.id, 
      this.width, 
      this.height, 
      this.url, 
      this.photographer, 
      this.photographerUrl, 
      this.photographerId, 
      this.avgColor, 
      this.src});

  ItemModel.fromJson(dynamic json) {
    id = json["id"];
    width = json["width"];
    height = json["height"];
    url = json["url"];
    photographer = json["photographer"];
    photographerUrl = json["photographer_url"];
    photographerId = json["photographer_id"];
    avgColor = json["avg_color"];
    src = json["src"] != null ? Src.fromJson(json["src"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["width"] = width;
    map["height"] = height;
    map["url"] = url;
    map["photographer"] = photographer;
    map["photographer_url"] = photographerUrl;
    map["photographer_id"] = photographerId;
    map["avg_color"] = avgColor;
    if (src != null) {
      map["src"] = src.toJson();
    }
    return map;
  }

}

/// original : "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg"
/// large2x : "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
/// large : "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"
/// medium : "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&h=350"
/// small : "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&h=130"
/// portrait : "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800"
/// landscape : "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200"
/// tiny : "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"

class Src {
  String original;
  String large2x;
  String large;
  String medium;
  String small;
  String portrait;
  String landscape;
  String tiny;

  Src({
      this.original, 
      this.large2x, 
      this.large, 
      this.medium, 
      this.small, 
      this.portrait, 
      this.landscape, 
      this.tiny});

  Src.fromJson(dynamic json) {
    original = json["original"];
    large2x = json["large2x"];
    large = json["large"];
    medium = json["medium"];
    small = json["small"];
    portrait = json["portrait"];
    landscape = json["landscape"];
    tiny = json["tiny"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["original"] = original;
    map["large2x"] = large2x;
    map["large"] = large;
    map["medium"] = medium;
    map["small"] = small;
    map["portrait"] = portrait;
    map["landscape"] = landscape;
    map["tiny"] = tiny;
    return map;
  }

}