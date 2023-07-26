class see_all_gold_model {
  int? id;
  int? productId;
  int? jewelryCategoriesId;
  dynamic photo;
  String? description;
  String? weight;
  String? accessoriesPrice;
  String? formulationPrice;
  String? finalPrice;
  int? views;
  String? createdAt;
  String? updatedAt;

  see_all_gold_model(
      {this.id,
        this.productId,
        this.jewelryCategoriesId,
        this.photo,
        this.description,
        this.weight,
        this.accessoriesPrice,
        this.formulationPrice,
        this.finalPrice,
        this.views,
        this.createdAt,
        this.updatedAt});

  see_all_gold_model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product-id'];
    jewelryCategoriesId = json['jewelry-categories-id'];
    photo = json['photo'];
    description = json['description'];
    weight = json['weight'];
    accessoriesPrice = json['accessories_price'];
    formulationPrice = json['formulation_price'];
    finalPrice = json['final_price'];
    views = json['views'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['product-id'] = productId;
    data['jewelry-categories-id'] = jewelryCategoriesId;
    data['photo'] = photo;
    data['description'] = description;
    data['weight'] = weight;
    data['accessories_price'] = accessoriesPrice;
    data['formulation_price'] = formulationPrice;
    data['final_price'] = finalPrice;
    data['views'] = views;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
