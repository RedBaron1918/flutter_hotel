import 'dart:convert';

List<HotelList> hotelListFromJson(String str) =>
    List<HotelList>.from(json.decode(str).map((x) => HotelList.fromJson(x)));

String hotelListToJson(List<HotelList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HotelList {
  HotelList({
    this.totalBlocks,
    this.rooms,
    this.block,
    this.hotelId,
  });

  int? totalBlocks;
  Map<String, Room>? rooms;
  List<Block>? block;
  int? hotelId;

  factory HotelList.fromJson(Map<String, dynamic> json) => HotelList(
        totalBlocks: json["total_blocks"],
        rooms: Map.from(json["rooms"]!)
            .map((k, v) => MapEntry<String, Room>(k, Room.fromJson(v))),
        block: json["block"] == null
            ? []
            : List<Block>.from(json["block"]!.map((x) => Block.fromJson(x))),
        hotelId: json["hotel_id"],
      );

  Map<String, dynamic> toJson() => {
        "total_blocks": totalBlocks,
        "rooms": Map.from(rooms!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "block": block == null
            ? []
            : List<dynamic>.from(block!.map((x) => x.toJson())),
        "hotel_id": hotelId,
      };
}

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
    this.blockText,
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
  BlockText? blockText;
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

  factory Block.fromJson(Map<String, dynamic> json) => Block(
        priceBreakdown: json["price_breakdown"] == null
            ? null
            : PriceBreakdown.fromJson(json["price_breakdown"]),
        name: json["name"],
        rateTypeId: json["rate_type_id"],
        extrabedAvailable: json["extrabed_available"],
        nameWithoutPolicy: json["name_without_policy"],
        refundable: json["refundable"],
        isBlockFit: json["is_block_fit"],
        mealplan: json["mealplan"],
        refundableUntil: json["refundable_until"],
        blockText: json["block_text"] == null
            ? null
            : BlockText.fromJson(json["block_text"]),
        paymentterms: json["paymentterms"] == null
            ? null
            : Paymentterms.fromJson(json["paymentterms"]),
        roomId: json["room_id"],
        minPrice: json["min_price"] == null
            ? null
            : MinPrice.fromJson(json["min_price"]),
        blockId: json["block_id"],
        roomtypeId: json["roomtype_id"],
        incrementalPrice: json["incremental_price"] == null
            ? []
            : List<IncrementalPrice>.from(json["incremental_price"]!
                .map((x) => IncrementalPrice.fromJson(x))),
        detailMealplan: json["detail_mealplan"] == null
            ? []
            : List<DetailMealplan>.from(json["detail_mealplan"]!
                .map((x) => DetailMealplan.fromJson(x))),
        dinnerIncluded: json["dinner_included"],
        roomSurfaceInM2: json["room_surface_in_m2"],
        roomCount: json["room_count"],
        maxOccupancy: json["max_occupancy"],
        productPriceBreakdown: json["product_price_breakdown"] == null
            ? null
            : ProductPriceBreakdown.fromJson(json["product_price_breakdown"]),
        roomName: json["room_name"],
        fullBoard: json["full_board"],
        lunchIncluded: json["lunch_included"],
        isMobileDeal: json["is_mobile_deal"],
        breakfastIncluded: json["breakfast_included"],
      );

  Map<String, dynamic> toJson() => {
        "price_breakdown": priceBreakdown?.toJson(),
        "name": name,
        "rate_type_id": rateTypeId,
        "extrabed_available": extrabedAvailable,
        "name_without_policy": nameWithoutPolicy,
        "refundable": refundable,
        "is_block_fit": isBlockFit,
        "mealplan": mealplan,
        "refundable_until": refundableUntil,
        "block_text": blockText?.toJson(),
        "paymentterms": paymentterms?.toJson(),
        "room_id": roomId,
        "min_price": minPrice?.toJson(),
        "block_id": blockId,
        "roomtype_id": roomtypeId,
        "incremental_price": incrementalPrice == null
            ? []
            : List<dynamic>.from(incrementalPrice!.map((x) => x.toJson())),
        "detail_mealplan": detailMealplan == null
            ? []
            : List<dynamic>.from(detailMealplan!.map((x) => x.toJson())),
        "dinner_included": dinnerIncluded,
        "room_surface_in_m2": roomSurfaceInM2,
        "room_count": roomCount,
        "max_occupancy": maxOccupancy,
        "product_price_breakdown": productPriceBreakdown?.toJson(),
        "room_name": roomName,
        "full_board": fullBoard,
        "lunch_included": lunchIncluded,
        "is_mobile_deal": isMobileDeal,
        "breakfast_included": breakfastIncluded,
      };
}

class BlockText {
  BlockText({
    this.policies,
  });

  List<Policy>? policies;

  factory BlockText.fromJson(Map<String, dynamic> json) => BlockText(
        policies: json["policies"] == null
            ? []
            : List<Policy>.from(
                json["policies"]!.map((x) => Policy.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "policies": policies == null
            ? []
            : List<dynamic>.from(policies!.map((x) => x.toJson())),
      };
}

class Policy {
  Policy({
    this.policyClass,
    this.content,
    this.mealplanVector,
    this.price,
    this.currencycode,
  });

  String? policyClass;
  String? content;
  String? mealplanVector;
  num? price;
  String? currencycode;

  factory Policy.fromJson(Map<String, dynamic> json) => Policy(
        policyClass: json["class"],
        content: json["content"],
        mealplanVector: json["mealplan_vector"],
        price: json["price"],
        currencycode: json["currencycode"],
      );

  Map<String, dynamic> toJson() => {
        "class": policyClass,
        "content": content,
        "mealplan_vector": mealplanVector,
        "price": price,
        "currencycode": currencycode,
      };
}

class DetailMealplan {
  DetailMealplan({
    this.currency,
    this.price,
    this.title,
    this.icon,
  });

  String? currency;
  num? price;
  String? title;
  String? icon;

  factory DetailMealplan.fromJson(Map<String, dynamic> json) => DetailMealplan(
        currency: json["currency"],
        price: json["price"],
        title: json["title"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "currency": currency,
        "price": price,
        "title": title,
        "icon": icon,
      };
}

class IncrementalPrice {
  IncrementalPrice({
    this.extraChargesBreakdown,
    this.currency,
    this.price,
  });

  IncrementalPriceExtraChargesBreakdown? extraChargesBreakdown;
  String? currency;
  dynamic price;

  factory IncrementalPrice.fromJson(Map<String, dynamic> json) =>
      IncrementalPrice(
        extraChargesBreakdown: json["extra_charges_breakdown"] == null
            ? null
            : IncrementalPriceExtraChargesBreakdown.fromJson(
                json["extra_charges_breakdown"]),
        currency: json["currency"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "extra_charges_breakdown": extraChargesBreakdown?.toJson(),
        "currency": currency,
        "price": price,
      };
}

class IncrementalPriceExtraChargesBreakdown {
  IncrementalPriceExtraChargesBreakdown({
    this.netPrice,
    this.extraCharge,
  });

  String? netPrice;
  List<PurpleExtraCharge>? extraCharge;

  factory IncrementalPriceExtraChargesBreakdown.fromJson(
          Map<String, dynamic> json) =>
      IncrementalPriceExtraChargesBreakdown(
        netPrice: json["net_price"],
        extraCharge: json["extra_charge"] == null
            ? []
            : List<PurpleExtraCharge>.from(json["extra_charge"]!
                .map((x) => PurpleExtraCharge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "net_price": netPrice,
        "extra_charge": extraCharge == null
            ? []
            : List<dynamic>.from(extraCharge!.map((x) => x.toJson())),
      };
}

class PurpleExtraCharge {
  PurpleExtraCharge({
    this.amount,
    this.type,
    this.currency,
    this.name,
    this.excluded,
    this.chargeAmount,
    this.inclusionType,
    this.chargePriceMode,
  });

  dynamic amount;
  String? type;
  String? currency;
  String? name;
  num? excluded;
  String? chargeAmount;
  String? inclusionType;
  num? chargePriceMode;

  factory PurpleExtraCharge.fromJson(Map<String, dynamic> json) =>
      PurpleExtraCharge(
        amount: json["amount"],
        type: json["type"],
        currency: json["currency"],
        name: json["name"],
        excluded: json["excluded"],
        chargeAmount: json["charge_amount"],
        inclusionType: json["inclusion_type"],
        chargePriceMode: json["charge_price_mode"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "type": type,
        "currency": currency,
        "name": name,
        "excluded": excluded,
        "charge_amount": chargeAmount,
        "inclusion_type": inclusionType,
        "charge_price_mode": chargePriceMode,
      };
}

class MinPrice {
  MinPrice({
    this.price,
    this.currency,
    this.extraChargesBreakdown,
  });

  String? price;
  String? currency;
  MinPriceExtraChargesBreakdown? extraChargesBreakdown;

  factory MinPrice.fromJson(Map<String, dynamic> json) => MinPrice(
        price: json["price"],
        currency: json["currency"],
        extraChargesBreakdown: json["extra_charges_breakdown"] == null
            ? null
            : MinPriceExtraChargesBreakdown.fromJson(
                json["extra_charges_breakdown"]),
      );

  Map<String, dynamic> toJson() => {
        "price": price,
        "currency": currency,
        "extra_charges_breakdown": extraChargesBreakdown?.toJson(),
      };
}

class MinPriceExtraChargesBreakdown {
  MinPriceExtraChargesBreakdown({
    this.netPrice,
    this.extraCharge,
  });

  String? netPrice;
  List<FluffyExtraCharge>? extraCharge;

  factory MinPriceExtraChargesBreakdown.fromJson(Map<String, dynamic> json) =>
      MinPriceExtraChargesBreakdown(
        netPrice: json["net_price"],
        extraCharge: json["extra_charge"] == null
            ? []
            : List<FluffyExtraCharge>.from(json["extra_charge"]!
                .map((x) => FluffyExtraCharge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "net_price": netPrice,
        "extra_charge": extraCharge == null
            ? []
            : List<dynamic>.from(extraCharge!.map((x) => x.toJson())),
      };
}

class FluffyExtraCharge {
  FluffyExtraCharge({
    this.inclusionType,
    this.chargeAmount,
    this.chargePriceMode,
    this.amount,
    this.type,
    this.currency,
    this.name,
    this.excluded,
  });

  String? inclusionType;
  String? chargeAmount;
  num? chargePriceMode;
  String? amount;
  String? type;
  String? currency;
  String? name;
  num? excluded;

  factory FluffyExtraCharge.fromJson(Map<String, dynamic> json) =>
      FluffyExtraCharge(
        inclusionType: json["inclusion_type"],
        chargeAmount: json["charge_amount"],
        chargePriceMode: json["charge_price_mode"],
        amount: json["amount"],
        type: json["type"],
        currency: json["currency"],
        name: json["name"],
        excluded: json["excluded"],
      );

  Map<String, dynamic> toJson() => {
        "inclusion_type": inclusionType,
        "charge_amount": chargeAmount,
        "charge_price_mode": chargePriceMode,
        "amount": amount,
        "type": type,
        "currency": currency,
        "name": name,
        "excluded": excluded,
      };
}

class Paymentterms {
  Paymentterms({
    this.prepayment,
    this.cancellation,
  });

  Prepayment? prepayment;
  Cancellation? cancellation;

  factory Paymentterms.fromJson(Map<String, dynamic> json) => Paymentterms(
        prepayment: json["prepayment"] == null
            ? null
            : Prepayment.fromJson(json["prepayment"]),
        cancellation: json["cancellation"] == null
            ? null
            : Cancellation.fromJson(json["cancellation"]),
      );

  Map<String, dynamic> toJson() => {
        "prepayment": prepayment?.toJson(),
        "cancellation": cancellation?.toJson(),
      };
}

class Cancellation {
  Cancellation({
    this.description,
    this.timeline,
    this.nonRefundableAnymore,
    this.typeTranslation,
    this.guaranteedNonRefundable,
    this.bucket,
    this.type,
  });

  String? description;
  Timeline? timeline;
  num? nonRefundableAnymore;
  String? typeTranslation;
  num? guaranteedNonRefundable;
  String? bucket;
  String? type;

  factory Cancellation.fromJson(Map<String, dynamic> json) => Cancellation(
        description: json["description"],
        timeline: json["timeline"] == null
            ? null
            : Timeline.fromJson(json["timeline"]),
        nonRefundableAnymore: json["non_refundable_anymore"],
        typeTranslation: json["type_translation"],
        guaranteedNonRefundable: json["guaranteed_non_refundable"],
        bucket: json["bucket"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "timeline": timeline?.toJson(),
        "non_refundable_anymore": nonRefundableAnymore,
        "type_translation": typeTranslation,
        "guaranteed_non_refundable": guaranteedNonRefundable,
        "bucket": bucket,
        "type": type,
      };
}

class Timeline {
  Timeline({
    this.uCurrencyCode,
    this.currencyCode,
    this.policygroupInstanceId,
    this.nrStages,
  });

  String? uCurrencyCode;
  String? currencyCode;
  String? policygroupInstanceId;
  num? nrStages;

  factory Timeline.fromJson(Map<String, dynamic> json) => Timeline(
        uCurrencyCode: json["u_currency_code"],
        currencyCode: json["currency_code"],
        policygroupInstanceId: json["policygroup_instance_id"],
        nrStages: json["nr_stages"],
      );

  Map<String, dynamic> toJson() => {
        "u_currency_code": uCurrencyCode,
        "currency_code": currencyCode,
        "policygroup_instance_id": policygroupInstanceId,
        "nr_stages": nrStages,
      };
}

class Prepayment {
  Prepayment({
    this.typeExtended,
    this.type,
    this.extendedTypeTranslation,
    this.timeline,
    this.simpleTranslation,
    this.description,
    this.typeTranslation,
  });

  String? typeExtended;
  String? type;
  String? extendedTypeTranslation;
  Timeline? timeline;
  String? simpleTranslation;
  String? description;
  String? typeTranslation;

  factory Prepayment.fromJson(Map<String, dynamic> json) => Prepayment(
        typeExtended: json["type_extended"],
        type: json["type"],
        extendedTypeTranslation: json["extended_type_translation"],
        timeline: json["timeline"] == null
            ? null
            : Timeline.fromJson(json["timeline"]),
        simpleTranslation: json["simple_translation"],
        description: json["description"],
        typeTranslation: json["type_translation"],
      );

  Map<String, dynamic> toJson() => {
        "type_extended": typeExtended,
        "type": type,
        "extended_type_translation": extendedTypeTranslation,
        "timeline": timeline?.toJson(),
        "simple_translation": simpleTranslation,
        "description": description,
        "type_translation": typeTranslation,
      };
}

class PriceBreakdown {
  PriceBreakdown({
    this.currency,
    this.allInclusivePrice,
  });

  String? currency;
  num? allInclusivePrice;

  factory PriceBreakdown.fromJson(Map<String, dynamic> json) => PriceBreakdown(
        currency: json["currency"],
        allInclusivePrice: json["all_inclusive_price"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "currency": currency,
        "all_inclusive_price": allInclusivePrice,
      };
}

class ProductPriceBreakdown {
  ProductPriceBreakdown({
    this.allInclusiveAmount,
    this.netAmount,
    this.grossAmountPerNight,
    this.items,
    this.grossAmount,
    this.excludedAmount,
    this.nrStays,
    this.benefits,
    this.includedTaxesAndChargesAmount,
    this.grossAmountHotelCurrency,
  });

  AllInclusiveAmount? allInclusiveAmount;
  AllInclusiveAmount? netAmount;
  AllInclusiveAmount? grossAmountPerNight;
  List<Item>? items;
  AllInclusiveAmount? grossAmount;
  AllInclusiveAmount? excludedAmount;
  num? nrStays;
  List<dynamic>? benefits;
  AllInclusiveAmount? includedTaxesAndChargesAmount;
  AllInclusiveAmount? grossAmountHotelCurrency;

  factory ProductPriceBreakdown.fromJson(Map<String, dynamic> json) =>
      ProductPriceBreakdown(
        allInclusiveAmount: json["all_inclusive_amount"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["all_inclusive_amount"]),
        netAmount: json["net_amount"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["net_amount"]),
        grossAmountPerNight: json["gross_amount_per_night"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["gross_amount_per_night"]),
        items: json["items"] == null
            ? []
            : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
        grossAmount: json["gross_amount"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["gross_amount"]),
        excludedAmount: json["excluded_amount"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["excluded_amount"]),
        nrStays: json["nr_stays"],
        benefits: json["benefits"] == null
            ? []
            : List<dynamic>.from(json["benefits"]!.map((x) => x)),
        includedTaxesAndChargesAmount:
            json["included_taxes_and_charges_amount"] == null
                ? null
                : AllInclusiveAmount.fromJson(
                    json["included_taxes_and_charges_amount"]),
        grossAmountHotelCurrency: json["gross_amount_hotel_currency"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["gross_amount_hotel_currency"]),
      );

  Map<String, dynamic> toJson() => {
        "all_inclusive_amount": allInclusiveAmount?.toJson(),
        "net_amount": netAmount?.toJson(),
        "gross_amount_per_night": grossAmountPerNight?.toJson(),
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "gross_amount": grossAmount?.toJson(),
        "excluded_amount": excludedAmount?.toJson(),
        "nr_stays": nrStays,
        "benefits":
            benefits == null ? [] : List<dynamic>.from(benefits!.map((x) => x)),
        "included_taxes_and_charges_amount":
            includedTaxesAndChargesAmount?.toJson(),
        "gross_amount_hotel_currency": grossAmountHotelCurrency?.toJson(),
      };
}

class AllInclusiveAmount {
  AllInclusiveAmount({
    this.value,
    this.currency,
  });

  num? value;
  String? currency;

  factory AllInclusiveAmount.fromJson(Map<String, dynamic> json) =>
      AllInclusiveAmount(
        value: json["value"]?.toDouble(),
        currency: json["currency"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "currency": currency,
      };
}

class Item {
  Item({
    this.details,
    this.itemAmount,
    this.name,
    this.base,
    this.inclusionType,
    this.kind,
  });

  String? details;
  AllInclusiveAmount? itemAmount;
  String? name;
  Base? base;
  String? inclusionType;
  String? kind;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        details: json["details"],
        itemAmount: json["item_amount"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["item_amount"]),
        name: json["name"],
        base: json["base"] == null ? null : Base.fromJson(json["base"]),
        inclusionType: json["inclusion_type"],
        kind: json["kind"],
      );

  Map<String, dynamic> toJson() => {
        "details": details,
        "item_amount": itemAmount?.toJson(),
        "name": name,
        "base": base?.toJson(),
        "inclusion_type": inclusionType,
        "kind": kind,
      };
}

class Base {
  Base({
    this.kind,
    this.percentage,
  });

  String? kind;
  num? percentage;

  factory Base.fromJson(Map<String, dynamic> json) => Base(
        kind: json["kind"],
        percentage: json["percentage"],
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "percentage": percentage,
      };
}

class Room {
  Room({
    this.photosMaySorted,
    this.highlights,
    this.isHighFloorGuaranteed,
    this.childrenAndBedsText,
    this.privateBathroomCount,
    this.photos,
    this.facilities,
    this.description,
    this.bedConfigurations,
    this.privateBathroomHighlight,
  });

  num? photosMaySorted;
  List<Highlight>? highlights;
  num? isHighFloorGuaranteed;
  ChildrenAndBedsText? childrenAndBedsText;
  num? privateBathroomCount;
  List<Photo>? photos;
  List<Facility>? facilities;
  String? description;
  List<BedConfiguration>? bedConfigurations;
  PrivateBathroomHighlight? privateBathroomHighlight;

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        photosMaySorted: json["photos_may_sorted"],
        highlights: json["highlights"] == null
            ? []
            : List<Highlight>.from(
                json["highlights"]!.map((x) => Highlight.fromJson(x))),
        isHighFloorGuaranteed: json["is_high_floor_guaranteed"],
        childrenAndBedsText: json["children_and_beds_text"] == null
            ? null
            : ChildrenAndBedsText.fromJson(json["children_and_beds_text"]),
        privateBathroomCount: json["private_bathroom_count"],
        photos: json["photos"] == null
            ? []
            : List<Photo>.from(json["photos"]!.map((x) => Photo.fromJson(x))),
        facilities: json["facilities"] == null
            ? []
            : List<Facility>.from(
                json["facilities"]!.map((x) => Facility.fromJson(x))),
        description: json["description"],
        bedConfigurations: json["bed_configurations"] == null
            ? []
            : List<BedConfiguration>.from(json["bed_configurations"]!
                .map((x) => BedConfiguration.fromJson(x))),
        privateBathroomHighlight: json["private_bathroom_highlight"] == null
            ? null
            : PrivateBathroomHighlight.fromJson(
                json["private_bathroom_highlight"]),
      );

  Map<String, dynamic> toJson() => {
        "photos_may_sorted": photosMaySorted,
        "highlights": highlights == null
            ? []
            : List<dynamic>.from(highlights!.map((x) => x.toJson())),
        "is_high_floor_guaranteed": isHighFloorGuaranteed,
        "children_and_beds_text": childrenAndBedsText?.toJson(),
        "private_bathroom_count": privateBathroomCount,
        "photos": photos == null
            ? []
            : List<dynamic>.from(photos!.map((x) => x.toJson())),
        "facilities": facilities == null
            ? []
            : List<dynamic>.from(facilities!.map((x) => x.toJson())),
        "description": description,
        "bed_configurations": bedConfigurations == null
            ? []
            : List<dynamic>.from(bedConfigurations!.map((x) => x.toJson())),
        "private_bathroom_highlight": privateBathroomHighlight?.toJson(),
      };
}

class BedConfiguration {
  BedConfiguration({
    this.bedTypes,
  });

  List<BedType>? bedTypes;

  factory BedConfiguration.fromJson(Map<String, dynamic> json) =>
      BedConfiguration(
        bedTypes: json["bed_types"] == null
            ? []
            : List<BedType>.from(
                json["bed_types"]!.map((x) => BedType.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "bed_types": bedTypes == null
            ? []
            : List<dynamic>.from(bedTypes!.map((x) => x.toJson())),
      };
}

class BedType {
  BedType({
    this.descriptionImperial,
    this.name,
    this.nameWithCount,
    this.description,
    this.bedType,
    this.count,
    this.descriptionLocalized,
  });

  String? descriptionImperial;
  String? name;
  String? nameWithCount;
  String? description;
  num? bedType;
  num? count;
  dynamic descriptionLocalized;

  factory BedType.fromJson(Map<String, dynamic> json) => BedType(
        descriptionImperial: json["description_imperial"],
        name: json["name"],
        nameWithCount: json["name_with_count"],
        description: json["description"],
        bedType: json["bed_type"],
        count: json["count"],
        descriptionLocalized: json["description_localized"],
      );

  Map<String, dynamic> toJson() => {
        "description_imperial": descriptionImperial,
        "name": name,
        "name_with_count": nameWithCount,
        "description": description,
        "bed_type": bedType,
        "count": count,
        "description_localized": descriptionLocalized,
      };
}

class ChildrenAndBedsText {
  ChildrenAndBedsText({
    this.agenumervals,
    this.childrenAtTheProperty,
    this.allowChildren,
    this.cribsAndExtraBeds,
  });

  List<Agenumerval>? agenumervals;
  List<ChildrenAtTheProperty>? childrenAtTheProperty;
  num? allowChildren;
  List<ChildrenAtTheProperty>? cribsAndExtraBeds;

  factory ChildrenAndBedsText.fromJson(Map<String, dynamic> json) =>
      ChildrenAndBedsText(
        agenumervals: json["age_numervals"] == null
            ? []
            : List<Agenumerval>.from(
                json["age_numervals"]!.map((x) => Agenumerval.fromJson(x))),
        childrenAtTheProperty: json["children_at_the_property"] == null
            ? []
            : List<ChildrenAtTheProperty>.from(json["children_at_the_property"]!
                .map((x) => ChildrenAtTheProperty.fromJson(x))),
        allowChildren: json["allow_children"],
        cribsAndExtraBeds: json["cribs_and_extra_beds"] == null
            ? []
            : List<ChildrenAtTheProperty>.from(json["cribs_and_extra_beds"]!
                .map((x) => ChildrenAtTheProperty.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "age_numervals": agenumervals == null
            ? []
            : List<dynamic>.from(agenumervals!.map((x) => x.toJson())),
        "children_at_the_property": childrenAtTheProperty == null
            ? []
            : List<dynamic>.from(childrenAtTheProperty!.map((x) => x.toJson())),
        "allow_children": allowChildren,
        "cribs_and_extra_beds": cribsAndExtraBeds == null
            ? []
            : List<dynamic>.from(cribsAndExtraBeds!.map((x) => x.toJson())),
      };
}

class Agenumerval {
  Agenumerval({
    this.groupByPrice,
    this.typesByPrice,
    this.crib,
    this.maxAge,
    this.minAge,
    this.extraBed,
  });

  GroupByPrice? groupByPrice;
  List<List<TypesByPrice>>? typesByPrice;
  Crib? crib;
  num? maxAge;
  num? minAge;
  ExtraBed? extraBed;

  factory Agenumerval.fromJson(Map<String, dynamic> json) => Agenumerval(
        groupByPrice: json["group_by_price"] == null
            ? null
            : GroupByPrice.fromJson(json["group_by_price"]),
        typesByPrice: json["types_by_price"] == null
            ? []
            : List<List<TypesByPrice>>.from(json["types_by_price"]!.map((x) =>
                List<TypesByPrice>.from(
                    x.map((x) => typesByPriceValues.map[x]!)))),
        crib: json["crib"] == null ? null : Crib.fromJson(json["crib"]),
        maxAge: json["max_age"],
        minAge: json["min_age"],
        extraBed: json["extra_bed"] == null
            ? null
            : ExtraBed.fromJson(json["extra_bed"]),
      );

  Map<String, dynamic> toJson() => {
        "group_by_price": groupByPrice?.toJson(),
        "types_by_price": typesByPrice == null
            ? []
            : List<dynamic>.from(typesByPrice!.map((x) => List<dynamic>.from(
                x.map((x) => typesByPriceValues.reverse[x])))),
        "crib": crib?.toJson(),
        "max_age": maxAge,
        "min_age": minAge,
        "extra_bed": extraBed?.toJson(),
      };
}

class Crib {
  Crib({
    this.priceModeN,
    this.price,
    this.priceTypeN,
    this.priceMode,
    this.priceType,
    this.id,
  });

  num? priceModeN;
  num? price;
  num? priceTypeN;
  String? priceMode;
  String? priceType;
  num? id;

  factory Crib.fromJson(Map<String, dynamic> json) => Crib(
        priceModeN: json["price_mode_n"],
        price: json["price"],
        priceTypeN: json["price_type_n"],
        priceMode: json["price_mode"],
        priceType: json["price_type"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "price_mode_n": priceModeN,
        "price": price,
        "price_type_n": priceTypeN,
        "price_mode": priceMode,
        "price_type": priceType,
        "id": id,
      };
}

class ExtraBed {
  ExtraBed({
    this.priceMode,
    this.id,
    this.priceType,
    this.priceModeN,
    this.price,
    this.priceTypeN,
  });

  String? priceMode;
  num? id;
  String? priceType;
  num? priceModeN;
  String? price;
  num? priceTypeN;

  factory ExtraBed.fromJson(Map<String, dynamic> json) => ExtraBed(
        priceMode: json["price_mode"],
        id: json["id"],
        priceType: json["price_type"],
        priceModeN: json["price_mode_n"],
        price: json["price"],
        priceTypeN: json["price_type_n"],
      );

  Map<String, dynamic> toJson() => {
        "price_mode": priceMode,
        "id": id,
        "price_type": priceType,
        "price_mode_n": priceModeN,
        "price": price,
        "price_type_n": priceTypeN,
      };
}

class GroupByPrice {
  GroupByPrice({
    this.freePerNight0,
    this.fixedPerNight11800,
  });

  List<TypesByPrice>? freePerNight0;
  List<TypesByPrice>? fixedPerNight11800;

  factory GroupByPrice.fromJson(Map<String, dynamic> json) => GroupByPrice(
        freePerNight0: json["free,per_night,0"] == null
            ? []
            : List<TypesByPrice>.from(json["free,per_night,0"]!
                .map((x) => typesByPriceValues.map[x]!)),
        fixedPerNight11800: json["fixed,per_night,118.00"] == null
            ? []
            : List<TypesByPrice>.from(json["fixed,per_night,118.00"]!
                .map((x) => typesByPriceValues.map[x]!)),
      );

  Map<String, dynamic> toJson() => {
        "free,per_night,0": freePerNight0 == null
            ? []
            : List<dynamic>.from(
                freePerNight0!.map((x) => typesByPriceValues.reverse[x])),
        "fixed,per_night,118.00": fixedPerNight11800 == null
            ? []
            : List<dynamic>.from(
                fixedPerNight11800!.map((x) => typesByPriceValues.reverse[x])),
      };
}

enum TypesByPrice { CRIB, EXTRA_BED }

final typesByPriceValues = EnumValues(
    {"crib": TypesByPrice.CRIB, "extra_bed": TypesByPrice.EXTRA_BED});

class ChildrenAtTheProperty {
  ChildrenAtTheProperty({
    this.text,
    this.highlight,
  });

  String? text;
  num? highlight;

  factory ChildrenAtTheProperty.fromJson(Map<String, dynamic> json) =>
      ChildrenAtTheProperty(
        text: json["text"],
        highlight: json["highlight"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "highlight": highlight,
      };
}

class Facility {
  Facility({
    this.altFacilitytypeName,
    this.id,
    this.altFacilitytypeId,
    this.name,
    this.facilitytypeId,
    this.facilitytypeName,
  });

  AltFacilitytypeName? altFacilitytypeName;
  num? id;
  num? altFacilitytypeId;
  String? name;
  num? facilitytypeId;
  FacilitytypeName? facilitytypeName;

  factory Facility.fromJson(Map<String, dynamic> json) => Facility(
        altFacilitytypeName:
            altFacilitytypeNameValues.map[json["alt_facilitytype_name"]]!,
        id: json["id"],
        altFacilitytypeId: json["alt_facilitytype_id"],
        name: json["name"],
        facilitytypeId: json["facilitytype_id"],
        facilitytypeName:
            facilitytypeNameValues.map[json["facilitytype_name"]]!,
      );

  Map<String, dynamic> toJson() => {
        "alt_facilitytype_name":
            altFacilitytypeNameValues.reverse[altFacilitytypeName],
        "id": id,
        "alt_facilitytype_id": altFacilitytypeId,
        "name": name,
        "facilitytype_id": facilitytypeId,
        "facilitytype_name": facilitytypeNameValues.reverse[facilitytypeName],
      };
}

enum AltFacilitytypeName {
  GENERAL,
  ACCESSIBILITY,
  MEDIA_TECHNOLOGY,
  SERVICES,
  BATHROOM,
  ROOM_AMENITIES,
  FOOD_DRINK,
  BEDROOM,
  VIEW,
  KITCHEN,
  LIVING_AREA,
  ACTIVITIES
}

final altFacilitytypeNameValues = EnumValues({
  "Accessibility": AltFacilitytypeName.ACCESSIBILITY,
  "Activities": AltFacilitytypeName.ACTIVITIES,
  "Bathroom": AltFacilitytypeName.BATHROOM,
  "Bedroom": AltFacilitytypeName.BEDROOM,
  "Food & Drink": AltFacilitytypeName.FOOD_DRINK,
  "General": AltFacilitytypeName.GENERAL,
  "Kitchen": AltFacilitytypeName.KITCHEN,
  "Living Area": AltFacilitytypeName.LIVING_AREA,
  "Media & Technology": AltFacilitytypeName.MEDIA_TECHNOLOGY,
  "Room Amenities": AltFacilitytypeName.ROOM_AMENITIES,
  "Services": AltFacilitytypeName.SERVICES,
  "View": AltFacilitytypeName.VIEW
});

enum FacilitytypeName {
  MEDIA_TECHNOLOGY,
  ROOM_AMENITIES,
  ACCESSIBILITY,
  SERVICES_EXTRAS,
  BATHROOM,
  FOOD_DRINK,
  OUTDOOR_VIEW
}

final facilitytypeNameValues = EnumValues({
  "Accessibility": FacilitytypeName.ACCESSIBILITY,
  "Bathroom": FacilitytypeName.BATHROOM,
  "Food & Drink": FacilitytypeName.FOOD_DRINK,
  "Media & Technology": FacilitytypeName.MEDIA_TECHNOLOGY,
  "Outdoor & View": FacilitytypeName.OUTDOOR_VIEW,
  "Room Amenities": FacilitytypeName.ROOM_AMENITIES,
  "Services & Extras": FacilitytypeName.SERVICES_EXTRAS
});

class Highlight {
  Highlight({
    this.icon,
    this.translatedName,
    this.id,
  });

  String? icon;
  String? translatedName;
  num? id;

  factory Highlight.fromJson(Map<String, dynamic> json) => Highlight(
        icon: json["icon"],
        translatedName: json["translated_name"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon,
        "translated_name": translatedName,
        "id": id,
      };
}

class Photo {
  Photo({
    this.urlMax300,
    this.photoId,
    this.urlSquare60,
    this.url640X200,
    this.newOrder,
    this.ratio,
    this.urlOriginal,
    this.lastUpdateDate,
  });

  String? urlMax300;
  num? photoId;
  String? urlSquare60;
  String? url640X200;
  num? newOrder;
  num? ratio;
  String? urlOriginal;
  DateTime? lastUpdateDate;

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        urlMax300: json["url_max300"],
        photoId: json["photo_id"],
        urlSquare60: json["url_square60"],
        url640X200: json["url_640x200"],
        newOrder: json["new_order"],
        ratio: json["ratio"]?.toDouble(),
        urlOriginal: json["url_original"],
        lastUpdateDate: json["last_update_date"] == null
            ? null
            : DateTime.parse(json["last_update_date"]),
      );

  Map<String, dynamic> toJson() => {
        "url_max300": urlMax300,
        "photo_id": photoId,
        "url_square60": urlSquare60,
        "url_640x200": url640X200,
        "new_order": newOrder,
        "ratio": ratio,
        "url_original": urlOriginal,
        "last_update_date": lastUpdateDate?.toIso8601String(),
      };
}

class PrivateBathroomHighlight {
  PrivateBathroomHighlight({
    this.hasHighlight,
    this.text,
  });

  num? hasHighlight;
  String? text;

  factory PrivateBathroomHighlight.fromJson(Map<String, dynamic> json) =>
      PrivateBathroomHighlight(
        hasHighlight: json["has_highlight"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "has_highlight": hasHighlight,
        "text": text,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
