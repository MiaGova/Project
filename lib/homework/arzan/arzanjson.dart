// To parse this JSON data, do
//
//     final top = topFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Top topFromJson(String str) => Top.fromJson(json.decode(str));

String topToJson(Top data) => json.encode(data.toJson());

class Top {
  List<NewProduct> newProducts;
  int count;

  Top({
    required this.newProducts,
    required this.count,
  });

  factory Top.fromJson(Map<String, dynamic> json) => Top(
    newProducts: List<NewProduct>.from(json["new_products"].map((x) => NewProduct.fromJson(x))),
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "new_products": List<dynamic>.from(newProducts.map((x) => x.toJson())),
    "count": count,
  };
}

class NewProduct {
  int id;
  String productId;
  String nameTm;
  String nameRu;
  String bodyTm;
  String bodyRu;
  String productCode;
  int price;
  dynamic priceOld;
  dynamic priceTm;
  dynamic priceTmOld;
  dynamic priceUsd;
  dynamic priceUsdOld;
  int discount;
  bool isActive;
  Sex sex;
  bool isNew;
  bool isAction;
  int rating;
  int ratingCount;
  int soldCount;
  int likeCount;
  String isNewExpire;
  bool isLiked;
  dynamic note;
  int categoryId;
  int subcategoryId;
  dynamic brandId;
  int sellerId;
  DateTime createdAt;
  DateTime updatedAt;
  List<Images> images;

  NewProduct({
    required this.id,
    required this.productId,
    required this.nameTm,
    required this.nameRu,
    required this.bodyTm,
    required this.bodyRu,
    required this.productCode,
    required this.price,
    required this.priceOld,
    required this.priceTm,
    required this.priceTmOld,
    required this.priceUsd,
    required this.priceUsdOld,
    required this.discount,
    required this.isActive,
    required this.sex,
    required this.isNew,
    required this.isAction,
    required this.rating,
    required this.ratingCount,
    required this.soldCount,
    required this.likeCount,
    required this.isNewExpire,
    required this.isLiked,
    required this.note,
    required this.categoryId,
    required this.subcategoryId,
    required this.brandId,
    required this.sellerId,
    required this.createdAt,
    required this.updatedAt,
    required this.images,
  });

  factory NewProduct.fromJson(Map<String, dynamic> json) => NewProduct(
    id: json["id"],
    productId: json["product_id"],
    nameTm: json["name_tm"],
    nameRu: json["name_ru"],
    bodyTm: json["body_tm"],
    bodyRu: json["body_ru"],
    productCode: json["product_code"],
    price: json["price"],
    priceOld: json["price_old"],
    priceTm: json["price_tm"],
    priceTmOld: json["price_tm_old"],
    priceUsd: json["price_usd"],
    priceUsdOld: json["price_usd_old"],
    discount: json["discount"],
    isActive: json["isActive"],
    sex: sexValues.map[json["sex"]]!,
    isNew: json["isNew"],
    isAction: json["isAction"],
    rating: json["rating"],
    ratingCount: json["rating_count"],
    soldCount: json["sold_count"],
    likeCount: json["likeCount"],
    isNewExpire: json["is_new_expire"],
    isLiked: json["isLiked"],
    note: json["note"],
    categoryId: json["categoryId"],
    subcategoryId: json["subcategoryId"],
    brandId: json["brandId"],
    sellerId: json["sellerId"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    images: List<Images>.from(json["images"].map((x) => Images.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product_id": productId,
    "name_tm": nameTm,
    "name_ru": nameRu,
    "body_tm": bodyTm,
    "body_ru": bodyRu,
    "product_code": productCode,
    "price": price,
    "price_old": priceOld,
    "price_tm": priceTm,
    "price_tm_old": priceTmOld,
    "price_usd": priceUsd,
    "price_usd_old": priceUsdOld,
    "discount": discount,
    "isActive": isActive,
    "sex": sexValues.reverse[sex],
    "isNew": isNew,
    "isAction": isAction,
    "rating": rating,
    "rating_count": ratingCount,
    "sold_count": soldCount,
    "likeCount": likeCount,
    "is_new_expire": isNewExpire,
    "isLiked": isLiked,
    "note": note,
    "categoryId": categoryId,
    "subcategoryId": subcategoryId,
    "brandId": brandId,
    "sellerId": sellerId,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
  };
}

class Images {
  int id;
  String imagesId;
  int productId;
  String images;
  dynamic productcolorId;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic freeproductId;

  Images({
    required this.id,
    required this.imagesId,
    required this.productId,
    required this.images,
    required this.productcolorId,
    required this.createdAt,
    required this.updatedAt,
    required this.freeproductId,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
    id: json["id"],
    imagesId: json["image_id"],
    productId: json["productId"],
    images: json["image"],
    productcolorId: json["productcolorId"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    freeproductId: json["freeproductId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image_id": imagesId,
    "productId": productId,
    "image": images,
    "productcolorId": productcolorId,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "freeproductId": freeproductId,
  };
}

enum Sex { EMPTY }

final sexValues = EnumValues({
  "-": Sex.EMPTY
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
