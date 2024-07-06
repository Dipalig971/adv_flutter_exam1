class ProductModal {
  late List<Products> products;
  late int total, skip, limit;

  ProductModal._init({
    required this.limit,
    required this.skip,
    required this.total,
    required this.products,
  });

  factory ProductModal(Map<String, dynamic> json) {
    return ProductModal._init(
      limit: json['limit'] ?? 0,
      products: (json['products'] as List)
          .map((e) => Products(e as Map<String, dynamic>))
          .toList(),
      skip: json['skip'] ?? 0,
      total: json['total'] ?? 0,
    );
  }
}

class Products {
  late int id, minimumOrderQuantity, stock;
  late dynamic price, discountPercentage, rating;
  late String title, description, category, brand, sku, warrantyInformation,
      shippingInformation, availabilityStatus, returnPolicy, thumbnail;
  late List<String> tags;
  late List<Reviews> reviews;
  late Meta meta;
  late List<String> images;

  Products._init({
    required this.rating,
    required this.meta,
    required this.description,
    required this.title,
    required this.id,
    required this.availabilityStatus,
    required this.brand,
    required this.category,
    required this.discountPercentage,
    required this.minimumOrderQuantity,
    required this.price,
    required this.returnPolicy,
    required this.shippingInformation,
    required this.sku,
    required this.stock,
    required this.thumbnail,
    required this.warrantyInformation,
    required this.tags,
    required this.reviews,
    required this.images,
  });

  factory Products(Map<String, dynamic> json) {
    return Products._init(
      rating: json['rating'] ?? 0,
      meta: Meta(json['meta'] ?? {}),
      description: json['description'] ?? '',
      title: json['title'] ?? '',
      id: json['id'] ?? 0,
      availabilityStatus: json['availabilityStatus'] ?? '',
      brand: json['brand'] ?? '',
      category: json['category'] ?? '',
      discountPercentage: json['discountPercentage'] ?? 0.0,
      minimumOrderQuantity: json['minimumOrderQuantity'] ?? 1,
      price: json['price'] ?? 0.0,
      returnPolicy: json['returnPolicy'] ?? '',
      shippingInformation: json['shippingInformation'] ?? '',
      sku: json['sku'] ?? '',
      stock: json['stock'] ?? 0,
      thumbnail: json['thumbnail'] ?? '',
      warrantyInformation: json['warrantyInformation'] ?? '',
      tags: List<String>.from(json['tags'] ?? []),
      reviews: (json['reviews'] as List? ?? []).map((e) => Reviews(e as Map<String, dynamic>)).toList(),
      images: List<String>.from(json['images'] ?? []),
    );
  }
}

class Reviews {
  late int rating;
  late String comment, date, reviewerName, reviewerEmail;

  Reviews._init({
    required this.comment,
    required this.date,
    required this.rating,
    required this.reviewerEmail,
    required this.reviewerName,
  });

  factory Reviews(Map<String, dynamic> json) {
    return Reviews._init(
      comment: json['comment'] ?? '',
      date: json['date'] ?? '',
      rating: json['rating'] ?? 0,
      reviewerEmail: json['reviewerEmail'] ?? '',
      reviewerName: json['reviewerName'] ?? '',
    );
  }
}

class Meta {
  late String createdAt, updatedAt, barcode, qrCode;

  Meta._init({
    required this.barcode,
    required this.createdAt,
    required this.qrCode,
    required this.updatedAt,
  });

  factory Meta(Map<String, dynamic> json) {
    return Meta._init(
      barcode: json['barcode'] ?? '',
      createdAt: json['createdAt'] ?? '',
      qrCode: json['qrCode'] ?? '',
      updatedAt: json['updatedAt'] ?? '',
    );
  }
}

