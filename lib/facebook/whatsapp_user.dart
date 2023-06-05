import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class WhatsappUser {
  String? name;
  String? msg;
  String? time;
  String? day;
  var icon;
  String? notification;
  WhatsappUser(
      {this.name, this.msg, this.time, this.notification, this.icon, this.day});
}

class DBHelper {
  int? Id;
  String? Name;
  String? phonNo;
  String? City;
  DBHelper({this.Id, this.Name, this.phonNo, this.City});
}

class StoryModel {
  VoidCallback? onTap;
  String? image;
  String? userName;
  StoryModel({this.onTap, this.image, this.userName});
}

class PostModel {
  VoidCallback avatarOnOressed;
  String? imageAvatar;
  String? name;
  String? time;
  VoidCallback moreOnPressed;
  String? postTitle;
  String? postImage;
  VoidCallback likedOnPressed;
  VoidCallback shareOnPressed;
  VoidCallback commentOnPressed;
  PostModel(
      {required this.avatarOnOressed,
      this.imageAvatar,
      this.name,
      this.time,
      required this.moreOnPressed,
      this.postTitle,
      this.postImage,
      required this.likedOnPressed,
      required this.shareOnPressed,
      required this.commentOnPressed});
}

class VideoModel {
  VoidCallback avatarOnOressed;
  String? imageAvatar;
  String? name;
  String? time;
  VoidCallback moreOnPressed;
  String? videoPostTitle;
  // ignore: prefer_typing_uninitialized_variables
  var videoPostLink;
  VoidCallback likedOnPressed;
  VoidCallback shareOnPressed;
  VoidCallback commentOnPressed;
  VideoModel(
      {required this.avatarOnOressed,
      this.imageAvatar,
      this.name,
      this.time,
      required this.moreOnPressed,
      this.videoPostTitle,
      this.videoPostLink,
      required this.likedOnPressed,
      required this.shareOnPressed,
      required this.commentOnPressed});
}

class MarketPlace {
  String? title;
  String? photo;
  int? price;
  MarketPlace({this.title, this.photo, this.price});
}

class TestApi {
  int? albumId;
  int? id;
  String? title;
  var url;
  var thumbnailUrl;

  TestApi({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  TestApi.fromJson(Map<String, dynamic> json) {
    albumId = json['albumId'];
    id = json['id'];
    title = json['title'];
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['albumId'] = this.albumId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['url'] = this.url;
    data['thumbnailUrl'] = this.thumbnailUrl;
    return data;
  }
}

class SecondTest {
  bool? success;
  String? message;
  List<Data>? data;

  SecondTest({this.success, this.message, this.data});

  SecondTest.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  bool? isActive;
  String? createdAt;
  String? name;
  String? description;
  String? shopemail;
  String? shopaddress;
  String? shopcity;
  String? userid;
  var image;
  int? iV;
  List<Products>? products;

  Data(
      {this.sId,
      this.isActive,
      this.createdAt,
      this.name,
      this.description,
      this.shopemail,
      this.shopaddress,
      this.shopcity,
      this.userid,
      this.image,
      this.iV,
      this.products});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    name = json['name'];
    description = json['description'];
    shopemail = json['shopemail'];
    shopaddress = json['shopaddress'];
    shopcity = json['shopcity'];
    userid = json['userid'];
    image = json['image'];
    iV = json['__v'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['is_active'] = this.isActive;
    data['created_at'] = this.createdAt;
    data['name'] = this.name;
    data['description'] = this.description;
    data['shopemail'] = this.shopemail;
    data['shopaddress'] = this.shopaddress;
    data['shopcity'] = this.shopcity;
    data['userid'] = this.userid;
    data['image'] = this.image;
    data['__v'] = this.iV;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  String? sId;
  bool? onSale;
  int? salePercent;
  int? sold;
  bool? sliderNew;
  bool? sliderRecent;
  bool? sliderSold;
  String? date;
  String? title;
  String? categories;
  String? subcate;
  String? shop;
  String? price;
  String? saleTitle;
  String? salePrice;
  String? description;
  String? colors;
  String? size;
  List<Images>? images;
  int? iV;
  bool? inWishlist;

  Products(
      {this.sId,
      this.onSale,
      this.salePercent,
      this.sold,
      this.sliderNew,
      this.sliderRecent,
      this.sliderSold,
      this.date,
      this.title,
      this.categories,
      this.subcate,
      this.shop,
      this.price,
      this.saleTitle,
      this.salePrice,
      this.description,
      this.colors,
      this.size,
      this.images,
      this.iV,
      this.inWishlist});

  Products.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    onSale = json['on_sale'];
    salePercent = json['sale_percent'];
    sold = json['sold'];
    sliderNew = json['slider_new'];
    sliderRecent = json['slider_recent'];
    sliderSold = json['slider_sold'];
    date = json['date'];
    title = json['title'];
    categories = json['categories'];
    subcate = json['subcate'];
    shop = json['shop'];
    price = json['price'];
    saleTitle = json['sale_title'];
    salePrice = json['sale_price'];
    description = json['description'];
    colors = json['colors'];
    size = json['size'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(new Images.fromJson(v));
      });
    }
    iV = json['__v'];
    inWishlist = json['in_wishlist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['on_sale'] = this.onSale;
    data['sale_percent'] = this.salePercent;
    data['sold'] = this.sold;
    data['slider_new'] = this.sliderNew;
    data['slider_recent'] = this.sliderRecent;
    data['slider_sold'] = this.sliderSold;
    data['date'] = this.date;
    data['title'] = this.title;
    data['categories'] = this.categories;
    data['subcate'] = this.subcate;
    data['shop'] = this.shop;
    data['price'] = this.price;
    data['sale_title'] = this.saleTitle;
    data['sale_price'] = this.salePrice;
    data['description'] = this.description;
    data['colors'] = this.colors;
    data['size'] = this.size;
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    data['__v'] = this.iV;
    data['in_wishlist'] = this.inWishlist;
    return data;
  }
}

class Images {
  String? sId;
  String? filename;
  String? url;

  Images({this.sId, this.filename, this.url});

  Images.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    filename = json['filename'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['filename'] = this.filename;
    data['url'] = this.url;
    return data;
  }
}
