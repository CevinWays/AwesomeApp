import 'item_model.dart';

/// page : 1
/// per_page : 1
/// photos : [{"id":7763794,"width":3376,"height":6000,"url":"https://www.pexels.com/photo/yellow-flower-field-near-brown-wooden-house-7763794/","photographer":"Dilruba Sarıçimen","photographer_url":"https://www.pexels.com/@dilrubasaricimen","photographer_id":45077333,"avg_color":"#545D33","src":{"original":"https://images.pexels.com/photos/7763794/pexels-photo-7763794.jpeg","large2x":"https://images.pexels.com/photos/7763794/pexels-photo-7763794.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940","large":"https://images.pexels.com/photos/7763794/pexels-photo-7763794.jpeg?auto=compress&cs=tinysrgb&h=650&w=940","medium":"https://images.pexels.com/photos/7763794/pexels-photo-7763794.jpeg?auto=compress&cs=tinysrgb&h=350","small":"https://images.pexels.com/photos/7763794/pexels-photo-7763794.jpeg?auto=compress&cs=tinysrgb&h=130","portrait":"https://images.pexels.com/photos/7763794/pexels-photo-7763794.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800","landscape":"https://images.pexels.com/photos/7763794/pexels-photo-7763794.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200","tiny":"https://images.pexels.com/photos/7763794/pexels-photo-7763794.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"}}]
/// total_results : 8000
/// next_page : "https://api.pexels.com/v1/curated/?page=2&per_page=1"

class ListItemModel {
  int page;
  int perPage;
  List<ItemModel> itemModel;
  int totalResults;
  String nextPage;

  ListItemModel({
      this.page, 
      this.perPage, 
      this.itemModel,
      this.totalResults, 
      this.nextPage});

  ListItemModel.fromJson(dynamic json) {
    page = json["page"];
    perPage = json["per_page"];
    if (json["photos"] != null) {
      itemModel = [];
      json["photos"].forEach((v) {
        itemModel.add(ItemModel.fromJson(v));
      });
    }
    totalResults = json["total_results"];
    nextPage = json["next_page"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["page"] = page;
    map["per_page"] = perPage;
    if (itemModel != null) {
      map["photos"] = itemModel.map((v) => v.toJson()).toList();
    }
    map["total_results"] = totalResults;
    map["next_page"] = nextPage;
    return map;
  }

}