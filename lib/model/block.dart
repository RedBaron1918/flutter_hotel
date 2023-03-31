import 'models.dart';

class Block {
  Block({
    this.priceBreakdown,
    this.name,
    this.rateTypeId,
    this.extrabedAvailable,
    this.nameWithoutPolicy,
    this.refundable,
    this.isBlockFit,
    this.mealplan,
    this.refundableUntil,
    this.policies,
    this.paymentterms,
    this.roomId,
    this.minPrice,
    this.blockId,
    this.roomtypeId,
    this.incrementalPrice,
    this.detailMealplan,
    this.dinnerIncluded,
    this.roomSurfaceInM2,
    this.roomCount,
    this.maxOccupancy,
    this.productPriceBreakdown,
    this.roomName,
    this.fullBoard,
    this.lunchIncluded,
    this.isMobileDeal,
    this.breakfastIncluded,
  });

  PriceBreakdown? priceBreakdown;
  String? name;
  int? rateTypeId;
  int? extrabedAvailable;
  String? nameWithoutPolicy;
  int? refundable;
  int? isBlockFit;
  String? mealplan;
  String? refundableUntil;
  List<Policy>? policies;
  Paymentterms? paymentterms;
  int? roomId;
  MinPrice? minPrice;
  String? blockId;
  int? roomtypeId;
  List<IncrementalPrice>? incrementalPrice;
  List<DetailMealplan>? detailMealplan;
  int? dinnerIncluded;
  int? roomSurfaceInM2;
  int? roomCount;
  int? maxOccupancy;
  ProductPriceBreakdown? productPriceBreakdown;
  String? roomName;
  int? fullBoard;
  int? lunchIncluded;
  int? isMobileDeal;
  int? breakfastIncluded;

  factory Block.fromJson(Map<String, dynamic> json) {
    return Block(
      priceBreakdown: json['price_breakdown'] == null
          ? null
          : PriceBreakdown.fromJson(json['price_breakdown']),
      name: json['name'],
      rateTypeId: json['rate_type_id'],
      extrabedAvailable: json['extrabed_available'],
      nameWithoutPolicy: json['name_without_policy'],
      refundable: json['refundable'],
      isBlockFit: json['is_block_fit'],
      mealplan: json['mealplan'],
      refundableUntil: json['refundable_until'],
      policies: json['block_text'] == null
          ? null
          : List<Policy>.from((json['block_text']['policies'] as List)
              .map((e) => Policy.fromJson(e))),
      paymentterms: json['paymentterms'] == null
          ? null
          : Paymentterms.fromJson(json['paymentterms']),
      roomId: json['room_id'],
      minPrice: json['min_price'] == null
          ? null
          : MinPrice.fromJson(json['min_price']),
      blockId: json['block_id'],
      roomtypeId: json['roomtype_id'],
      incrementalPrice: json['incremental_price'] == null
          ? []
          : List<IncrementalPrice>.from(json['incremental_price']!
              .map((x) => IncrementalPrice.fromJson(x))),
      detailMealplan: json['detail_mealplan'] == null
          ? []
          : List<DetailMealplan>.from(
              json['detail_mealplan']!.map((x) => DetailMealplan.fromJson(x))),
      dinnerIncluded: json['dinner_included'],
      roomSurfaceInM2: json['room_surface_in_m2'],
      roomCount: json['room_count'],
      maxOccupancy: json['max_occupancy'],
      productPriceBreakdown: json['product_price_breakdown'] == null
          ? null
          : ProductPriceBreakdown.fromJson(json['product_price_breakdown']),
      roomName: json['room_name'],
      fullBoard: json['full_board'],
      lunchIncluded: json['lunch_included'],
      isMobileDeal: json['is_mobile_deal'],
      breakfastIncluded: json['breakfast_included'],
    );
  }

  Map<String, dynamic> toJson() => {
        'price_breakdown': priceBreakdown?.toJson(),
        'name': name,
        'rate_type_id': rateTypeId,
        'extrabed_available': extrabedAvailable,
        'name_without_policy': nameWithoutPolicy,
        'refundable': refundable,
        'is_block_fit': isBlockFit,
        'mealplan': mealplan,
        'refundable_until': refundableUntil,
        'paymentterms': paymentterms?.toJson(),
        'room_id': roomId,
        'min_price': minPrice?.toJson(),
        'block_id': blockId,
        'roomtype_id': roomtypeId,
        'incremental_price': incrementalPrice == null
            ? []
            : List<dynamic>.from(incrementalPrice!.map((x) => x.toJson())),
        'detail_mealplan': detailMealplan == null
            ? []
            : List<dynamic>.from(detailMealplan!.map((x) => x.toJson())),
        'dinner_included': dinnerIncluded,
        'room_surface_in_m2': roomSurfaceInM2,
        'room_count': roomCount,
        'max_occupancy': maxOccupancy,
        'product_price_breakdown': productPriceBreakdown?.toJson(),
        'room_name': roomName,
        'full_board': fullBoard,
        'lunch_included': lunchIncluded,
        'is_mobile_deal': isMobileDeal,
        'breakfast_included': breakfastIncluded,
      };
}
