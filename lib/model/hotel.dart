// To parse this JSON data, do
//
//     final hotelList = hotelListFromJson(jsonString);

import 'dart:convert';

List<HotelList> hotelListFromJson(String str) =>
    List<HotelList>.from(json.decode(str).map((x) => HotelList.fromJson(x)));

String hotelListToJson(List<HotelList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HotelList {
  HotelList({
    this.block,
    this.ccRequired,
    this.arrivalDate,
    this.topUfiBenefits,
    this.hotelId,
    this.rooms,
    this.totalBlocks,
  });

  List<Block>? block;
  String? ccRequired;
  DateTime? arrivalDate;
  List<TopUfiBenefit>? topUfiBenefits;
  int? hotelId;
  Map<String, Room>? rooms;
  int? totalBlocks;

  factory HotelList.fromJson(Map<String, dynamic> json) => HotelList(
        block: json["block"] == null
            ? []
            : List<Block>.from(json["block"]!.map((x) => Block.fromJson(x))),
        ccRequired: json["cc_required"],
        arrivalDate: json["arrival_date"] == null
            ? null
            : DateTime.parse(json["arrival_date"]),
        topUfiBenefits: json["top_ufi_benefits"] == null
            ? []
            : List<TopUfiBenefit>.from(json["top_ufi_benefits"]!
                .map((x) => TopUfiBenefit.fromJson(x))),
        hotelId: json["hotel_id"],
        rooms: Map.from(json["rooms"]!)
            .map((k, v) => MapEntry<String, Room>(k, Room.fromJson(v))),
        totalBlocks: json["total_blocks"],
      );

  Map<String, dynamic> toJson() => {
        "block": block == null
            ? []
            : List<dynamic>.from(block!.map((x) => x.toJson())),
        "cc_required": ccRequired,
        "arrival_date":
            "${arrivalDate!.year.toString().padLeft(4, '0')}-${arrivalDate!.month.toString().padLeft(2, '0')}-${arrivalDate!.day.toString().padLeft(2, '0')}",
        "top_ufi_benefits": topUfiBenefits == null
            ? []
            : List<dynamic>.from(topUfiBenefits!.map((x) => x.toJson())),
        "hotel_id": hotelId,
        "rooms": Map.from(rooms!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "total_blocks": totalBlocks,
      };
}

class Block {
  Block({
    this.isGeniusDiscountGeo,
    this.rateTypeId,
    this.childrenAges,
    this.detailMealplan,
    this.nrAdults,
    this.isDomesticRate,
    this.lunchIncluded,
    this.nrChildren,
    this.maxChildrenFree,
    this.isDormitory,
    this.isGeniusDeal,
    this.minPrice,
    this.isFlashDeal,
    this.paymentterms,
    this.deals,
    this.roomtypeId,
    this.roomId,
    this.isMobileDeal,
    this.isSmartDeal,
    this.geniusDiscountPercentage,
    this.productPriceBreakdown,
    this.incrementalPrice,
    this.halfBoard,
    this.podIosMigratePoliciesToSmpFullon,
    this.nameWithoutPolicy,
    this.breakfastIncluded,
    this.rackRate,
    this.smoking,
    this.mustReserveFreeParking,
    this.bhRoomHighlights,
    this.babycotsAvailableAmount,
    this.mealplan,
    this.isBlockFit,
    this.name,
    this.numberOfBathrooms,
    this.refundable,
    this.extrabedAvailableAmount,
    this.roomCount,
    this.roomSurfaceInFeet2,
    this.blockId,
    this.dinnerIncluded,
    this.fullBoard,
    this.canReserveFreeParking,
    this.allInclusive,
    this.refundableUntil,
    this.roomSurfaceInM2,
    this.babycotsAvailable,
    this.maxOccupancy,
    this.transactionalPolicyObjects,
    this.isSecretDeal,
    this.blockText,
    this.isLastMinuteDeal,
    this.maxChildrenFreeAge,
    this.depositRequired,
    this.extrabedAvailable,
    this.roomName,
    this.bBsbCampaigns,
    this.priceBreakdown,
  });

  int? isGeniusDiscountGeo;
  int? rateTypeId;
  List<dynamic>? childrenAges;
  List<DetailMealplan>? detailMealplan;
  int? nrAdults;
  int? isDomesticRate;
  int? lunchIncluded;
  int? nrChildren;
  int? maxChildrenFree;
  int? isDormitory;
  dynamic isGeniusDeal;
  MinPrice? minPrice;
  int? isFlashDeal;
  Paymentterms? paymentterms;
  Deals? deals;
  int? roomtypeId;
  int? roomId;
  int? isMobileDeal;
  int? isSmartDeal;
  int? geniusDiscountPercentage;
  ProductPriceBreakdown? productPriceBreakdown;
  List<IncrementalPrice>? incrementalPrice;
  int? halfBoard;
  int? podIosMigratePoliciesToSmpFullon;
  String? nameWithoutPolicy;
  int? breakfastIncluded;
  RackRate? rackRate;
  int? smoking;
  int? mustReserveFreeParking;
  List<dynamic>? bhRoomHighlights;
  dynamic babycotsAvailableAmount;
  Mealplan? mealplan;
  int? isBlockFit;
  String? name;
  int? numberOfBathrooms;
  int? refundable;
  dynamic extrabedAvailableAmount;
  int? roomCount;
  double? roomSurfaceInFeet2;
  String? blockId;
  int? dinnerIncluded;
  int? fullBoard;
  int? canReserveFreeParking;
  int? allInclusive;
  EUntil? refundableUntil;
  int? roomSurfaceInM2;
  int? babycotsAvailable;
  int? maxOccupancy;
  List<TransactionalPolicyObject>? transactionalPolicyObjects;
  int? isSecretDeal;
  BlockText? blockText;
  int? isLastMinuteDeal;
  int? maxChildrenFreeAge;
  int? depositRequired;
  int? extrabedAvailable;
  RoomName? roomName;
  List<dynamic>? bBsbCampaigns;
  PriceBreakdown? priceBreakdown;

  factory Block.fromJson(Map<String, dynamic> json) => Block(
        isGeniusDiscountGeo: json["is_genius_discount_geo"],
        rateTypeId: json["rate_type_id"],
        childrenAges: json["children_ages"] == null
            ? []
            : List<dynamic>.from(json["children_ages"]!.map((x) => x)),
        detailMealplan: json["detail_mealplan"] == null
            ? []
            : List<DetailMealplan>.from(json["detail_mealplan"]!
                .map((x) => DetailMealplan.fromJson(x))),
        nrAdults: json["nr_adults"],
        isDomesticRate: json["is_domestic_rate"],
        lunchIncluded: json["lunch_included"],
        nrChildren: json["nr_children"],
        maxChildrenFree: json["max_children_free"],
        isDormitory: json["is_dormitory"],
        isGeniusDeal: json["is_genius_deal"],
        minPrice: json["min_price"] == null
            ? null
            : MinPrice.fromJson(json["min_price"]),
        isFlashDeal: json["is_flash_deal"],
        paymentterms: json["paymentterms"] == null
            ? null
            : Paymentterms.fromJson(json["paymentterms"]),
        deals: json["deals"] == null ? null : Deals.fromJson(json["deals"]),
        roomtypeId: json["roomtype_id"],
        roomId: json["room_id"],
        isMobileDeal: json["is_mobile_deal"],
        isSmartDeal: json["is_smart_deal"],
        geniusDiscountPercentage: json["genius_discount_percentage"],
        productPriceBreakdown: json["product_price_breakdown"] == null
            ? null
            : ProductPriceBreakdown.fromJson(json["product_price_breakdown"]),
        incrementalPrice: json["incremental_price"] == null
            ? []
            : List<IncrementalPrice>.from(json["incremental_price"]!
                .map((x) => IncrementalPrice.fromJson(x))),
        halfBoard: json["half_board"],
        podIosMigratePoliciesToSmpFullon:
            json["pod_ios_migrate_policies_to_smp_fullon"],
        nameWithoutPolicy: json["name_without_policy"],
        breakfastIncluded: json["breakfast_included"],
        rackRate: json["rack_rate"] == null
            ? null
            : RackRate.fromJson(json["rack_rate"]),
        smoking: json["smoking"],
        mustReserveFreeParking: json["must_reserve_free_parking"],
        bhRoomHighlights: json["bh_room_highlights"] == null
            ? []
            : List<dynamic>.from(json["bh_room_highlights"]!.map((x) => x)),
        babycotsAvailableAmount: json["babycots_available_amount"],
        mealplan: mealplanValues.map[json["mealplan"]]!,
        isBlockFit: json["is_block_fit"],
        name: json["name"],
        numberOfBathrooms: json["number_of_bathrooms"],
        refundable: json["refundable"],
        extrabedAvailableAmount: json["extrabed_available_amount"],
        roomCount: json["room_count"],
        roomSurfaceInFeet2: json["room_surface_in_feet2"]?.toDouble(),
        blockId: json["block_id"],
        dinnerIncluded: json["dinner_included"],
        fullBoard: json["full_board"],
        canReserveFreeParking: json["can_reserve_free_parking"],
        allInclusive: json["all_inclusive"],
        refundableUntil: eUntilValues.map[json["refundable_until"]]!,
        roomSurfaceInM2: json["room_surface_in_m2"],
        babycotsAvailable: json["babycots_available"],
        maxOccupancy: json["max_occupancy"],
        transactionalPolicyObjects: json["transactional_policy_objects"] == null
            ? []
            : List<TransactionalPolicyObject>.from(
                json["transactional_policy_objects"]!
                    .map((x) => TransactionalPolicyObject.fromJson(x))),
        isSecretDeal: json["is_secret_deal"],
        blockText: json["block_text"] == null
            ? null
            : BlockText.fromJson(json["block_text"]),
        isLastMinuteDeal: json["is_last_minute_deal"],
        maxChildrenFreeAge: json["max_children_free_age"],
        depositRequired: json["deposit_required"],
        extrabedAvailable: json["extrabed_available"],
        roomName: roomNameValues.map[json["room_name"]]!,
        bBsbCampaigns: json["b_bsb_campaigns"] == null
            ? []
            : List<dynamic>.from(json["b_bsb_campaigns"]!.map((x) => x)),
        priceBreakdown: json["price_breakdown"] == null
            ? null
            : PriceBreakdown.fromJson(json["price_breakdown"]),
      );

  Map<String, dynamic> toJson() => {
        "is_genius_discount_geo": isGeniusDiscountGeo,
        "rate_type_id": rateTypeId,
        "children_ages": childrenAges == null
            ? []
            : List<dynamic>.from(childrenAges!.map((x) => x)),
        "detail_mealplan": detailMealplan == null
            ? []
            : List<dynamic>.from(detailMealplan!.map((x) => x.toJson())),
        "nr_adults": nrAdults,
        "is_domestic_rate": isDomesticRate,
        "lunch_included": lunchIncluded,
        "nr_children": nrChildren,
        "max_children_free": maxChildrenFree,
        "is_dormitory": isDormitory,
        "is_genius_deal": isGeniusDeal,
        "min_price": minPrice?.toJson(),
        "is_flash_deal": isFlashDeal,
        "paymentterms": paymentterms?.toJson(),
        "deals": deals?.toJson(),
        "roomtype_id": roomtypeId,
        "room_id": roomId,
        "is_mobile_deal": isMobileDeal,
        "is_smart_deal": isSmartDeal,
        "genius_discount_percentage": geniusDiscountPercentage,
        "product_price_breakdown": productPriceBreakdown?.toJson(),
        "incremental_price": incrementalPrice == null
            ? []
            : List<dynamic>.from(incrementalPrice!.map((x) => x.toJson())),
        "half_board": halfBoard,
        "pod_ios_migrate_policies_to_smp_fullon":
            podIosMigratePoliciesToSmpFullon,
        "name_without_policy": nameWithoutPolicy,
        "breakfast_included": breakfastIncluded,
        "rack_rate": rackRate?.toJson(),
        "smoking": smoking,
        "must_reserve_free_parking": mustReserveFreeParking,
        "bh_room_highlights": bhRoomHighlights == null
            ? []
            : List<dynamic>.from(bhRoomHighlights!.map((x) => x)),
        "babycots_available_amount": babycotsAvailableAmount,
        "mealplan": mealplanValues.reverse[mealplan],
        "is_block_fit": isBlockFit,
        "name": name,
        "number_of_bathrooms": numberOfBathrooms,
        "refundable": refundable,
        "extrabed_available_amount": extrabedAvailableAmount,
        "room_count": roomCount,
        "room_surface_in_feet2": roomSurfaceInFeet2,
        "block_id": blockId,
        "dinner_included": dinnerIncluded,
        "full_board": fullBoard,
        "can_reserve_free_parking": canReserveFreeParking,
        "all_inclusive": allInclusive,
        "refundable_until": eUntilValues.reverse[refundableUntil],
        "room_surface_in_m2": roomSurfaceInM2,
        "babycots_available": babycotsAvailable,
        "max_occupancy": maxOccupancy,
        "transactional_policy_objects": transactionalPolicyObjects == null
            ? []
            : List<dynamic>.from(
                transactionalPolicyObjects!.map((x) => x.toJson())),
        "is_secret_deal": isSecretDeal,
        "block_text": blockText?.toJson(),
        "is_last_minute_deal": isLastMinuteDeal,
        "max_children_free_age": maxChildrenFreeAge,
        "deposit_required": depositRequired,
        "extrabed_available": extrabedAvailable,
        "room_name": roomNameValues.reverse[roomName],
        "b_bsb_campaigns": bBsbCampaigns == null
            ? []
            : List<dynamic>.from(bBsbCampaigns!.map((x) => x)),
        "price_breakdown": priceBreakdown?.toJson(),
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
    this.price,
    this.mealplanVector,
    this.currencycode,
  });

  Class? policyClass;
  String? content;
  int? price;
  String? mealplanVector;
  Currency? currencycode;

  factory Policy.fromJson(Map<String, dynamic> json) => Policy(
        policyClass: classValues.map[json["class"]]!,
        content: json["content"],
        price: json["price"],
        mealplanVector: json["mealplan_vector"],
        currencycode: currencyValues.map[json["currencycode"]]!,
      );

  Map<String, dynamic> toJson() => {
        "class": classValues.reverse[policyClass],
        "content": content,
        "price": price,
        "mealplan_vector": mealplanVector,
        "currencycode": currencyValues.reverse[currencycode],
      };
}

enum Currency { GEL }

final currencyValues = EnumValues({"GEL": Currency.GEL});

enum Class {
  POLICY_CANCELLATION,
  POLICY_PREPAY,
  POLICY_HOTEL_MEALPLAN,
  POLICY_SUMMARY_INCLUDED,
  POLICY_TITLE
}

final classValues = EnumValues({
  "POLICY_CANCELLATION": Class.POLICY_CANCELLATION,
  "POLICY_HOTEL_MEALPLAN": Class.POLICY_HOTEL_MEALPLAN,
  "POLICY_PREPAY": Class.POLICY_PREPAY,
  "POLICY_SUMMARY_INCLUDED": Class.POLICY_SUMMARY_INCLUDED,
  "POLICY_TITLE": Class.POLICY_TITLE
});

class Deals {
  Deals({
    this.dealAttributes,
  });

  DealAttributes? dealAttributes;

  factory Deals.fromJson(Map<String, dynamic> json) => Deals(
        dealAttributes: json["deal_attributes"] == null
            ? null
            : DealAttributes.fromJson(json["deal_attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "deal_attributes": dealAttributes?.toJson(),
      };
}

class DealAttributes {
  DealAttributes({
    this.hasSecretChannelOption,
  });

  int? hasSecretChannelOption;

  factory DealAttributes.fromJson(Map<String, dynamic> json) => DealAttributes(
        hasSecretChannelOption: json["has_secret_channel_option"],
      );

  Map<String, dynamic> toJson() => {
        "has_secret_channel_option": hasSecretChannelOption,
      };
}

class DetailMealplan {
  DetailMealplan({
    this.icon,
    this.title,
    this.currency,
    this.price,
  });

  DetailMealplanIcon? icon;
  String? title;
  Currency? currency;
  int? price;

  factory DetailMealplan.fromJson(Map<String, dynamic> json) => DetailMealplan(
        icon: detailMealplanIconValues.map[json["icon"]]!,
        title: json["title"],
        currency: currencyValues.map[json["currency"]]!,
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "icon": detailMealplanIconValues.reverse[icon],
        "title": title,
        "currency": currencyValues.reverse[currency],
        "price": price,
      };
}

enum DetailMealplanIcon { COFFEE }

final detailMealplanIconValues =
    EnumValues({"coffee": DetailMealplanIcon.COFFEE});

class IncrementalPrice {
  IncrementalPrice({
    this.price,
    this.currency,
    this.extraChargesBreakdown,
  });

  dynamic price;
  Currency? currency;
  IncrementalPriceExtraChargesBreakdown? extraChargesBreakdown;

  factory IncrementalPrice.fromJson(Map<String, dynamic> json) =>
      IncrementalPrice(
        price: json["price"],
        currency: currencyValues.map[json["currency"]]!,
        extraChargesBreakdown: json["extra_charges_breakdown"] == null
            ? null
            : IncrementalPriceExtraChargesBreakdown.fromJson(
                json["extra_charges_breakdown"]),
      );

  Map<String, dynamic> toJson() => {
        "price": price,
        "currency": currencyValues.reverse[currency],
        "extra_charges_breakdown": extraChargesBreakdown?.toJson(),
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
    this.chargeAmount,
    this.type,
    this.inclusionType,
    this.chargePriceMode,
    this.excluded,
    this.name,
    this.currency,
  });

  dynamic amount;
  String? chargeAmount;
  Name? type;
  InclusionType? inclusionType;
  int? chargePriceMode;
  int? excluded;
  Name? name;
  Currency? currency;

  factory PurpleExtraCharge.fromJson(Map<String, dynamic> json) =>
      PurpleExtraCharge(
        amount: json["amount"],
        chargeAmount: json["charge_amount"],
        type: nameValues.map[json["type"]]!,
        inclusionType: inclusionTypeValues.map[json["inclusion_type"]]!,
        chargePriceMode: json["charge_price_mode"],
        excluded: json["excluded"],
        name: nameValues.map[json["name"]]!,
        currency: currencyValues.map[json["currency"]]!,
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "charge_amount": chargeAmount,
        "type": nameValues.reverse[type],
        "inclusion_type": inclusionTypeValues.reverse[inclusionType],
        "charge_price_mode": chargePriceMode,
        "excluded": excluded,
        "name": nameValues.reverse[name],
        "currency": currencyValues.reverse[currency],
      };
}

enum InclusionType { INCLUDED }

final inclusionTypeValues = EnumValues({"included": InclusionType.INCLUDED});

enum Name { VAT }

final nameValues = EnumValues({"VAT": Name.VAT});

enum Mealplan {
  CONTINENTAL_BREAKFAST_COSTS_GEL_65_PER_PERSON_PER_NIGHT,
  CONTINENTAL_BREAKFAST_IS_INCLUDED_IN_THE_ROOM_RATE
}

final mealplanValues = EnumValues({
  "Continental breakfast costs GEL 65 per person per night.":
      Mealplan.CONTINENTAL_BREAKFAST_COSTS_GEL_65_PER_PERSON_PER_NIGHT,
  "Continental breakfast is included in the room rate.":
      Mealplan.CONTINENTAL_BREAKFAST_IS_INCLUDED_IN_THE_ROOM_RATE
});

class MinPrice {
  MinPrice({
    this.extraChargesBreakdown,
    this.price,
    this.currency,
  });

  MinPriceExtraChargesBreakdown? extraChargesBreakdown;
  String? price;
  Currency? currency;

  factory MinPrice.fromJson(Map<String, dynamic> json) => MinPrice(
        extraChargesBreakdown: json["extra_charges_breakdown"] == null
            ? null
            : MinPriceExtraChargesBreakdown.fromJson(
                json["extra_charges_breakdown"]),
        price: json["price"],
        currency: currencyValues.map[json["currency"]]!,
      );

  Map<String, dynamic> toJson() => {
        "extra_charges_breakdown": extraChargesBreakdown?.toJson(),
        "price": price,
        "currency": currencyValues.reverse[currency],
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
    this.type,
    this.chargePriceMode,
    this.excluded,
    this.inclusionType,
    this.currency,
    this.name,
    this.amount,
    this.chargeAmount,
  });

  Name? type;
  int? chargePriceMode;
  int? excluded;
  InclusionType? inclusionType;
  Currency? currency;
  Name? name;
  String? amount;
  String? chargeAmount;

  factory FluffyExtraCharge.fromJson(Map<String, dynamic> json) =>
      FluffyExtraCharge(
        type: nameValues.map[json["type"]]!,
        chargePriceMode: json["charge_price_mode"],
        excluded: json["excluded"],
        inclusionType: inclusionTypeValues.map[json["inclusion_type"]]!,
        currency: currencyValues.map[json["currency"]]!,
        name: nameValues.map[json["name"]]!,
        amount: json["amount"],
        chargeAmount: json["charge_amount"],
      );

  Map<String, dynamic> toJson() => {
        "type": nameValues.reverse[type],
        "charge_price_mode": chargePriceMode,
        "excluded": excluded,
        "inclusion_type": inclusionTypeValues.reverse[inclusionType],
        "currency": currencyValues.reverse[currency],
        "name": nameValues.reverse[name],
        "amount": amount,
        "charge_amount": chargeAmount,
      };
}

class Paymentterms {
  Paymentterms({
    this.cancellation,
    this.prepayment,
  });

  Cancellation? cancellation;
  Prepayment? prepayment;

  factory Paymentterms.fromJson(Map<String, dynamic> json) => Paymentterms(
        cancellation: json["cancellation"] == null
            ? null
            : Cancellation.fromJson(json["cancellation"]),
        prepayment: json["prepayment"] == null
            ? null
            : Prepayment.fromJson(json["prepayment"]),
      );

  Map<String, dynamic> toJson() => {
        "cancellation": cancellation?.toJson(),
        "prepayment": prepayment?.toJson(),
      };
}

class Cancellation {
  Cancellation({
    this.description,
    this.bucket,
    this.timeline,
    this.info,
    this.guaranteedNonRefundable,
    this.typeTranslation,
    this.nonRefundableAnymore,
    this.type,
  });

  String? description;
  Bucket? bucket;
  CancellationTimeline? timeline;
  CancellationInfo? info;
  int? guaranteedNonRefundable;
  CancellationTypeTranslation? typeTranslation;
  int? nonRefundableAnymore;
  CancellationType? type;

  factory Cancellation.fromJson(Map<String, dynamic> json) => Cancellation(
        description: json["description"],
        bucket: bucketValues.map[json["bucket"]]!,
        timeline: json["timeline"] == null
            ? null
            : CancellationTimeline.fromJson(json["timeline"]),
        info: json["info"] == null
            ? null
            : CancellationInfo.fromJson(json["info"]),
        guaranteedNonRefundable: json["guaranteed_non_refundable"],
        typeTranslation:
            cancellationTypeTranslationValues.map[json["type_translation"]]!,
        nonRefundableAnymore: json["non_refundable_anymore"],
        type: cancellationTypeValues.map[json["type"]]!,
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "bucket": bucketValues.reverse[bucket],
        "timeline": timeline?.toJson(),
        "info": info?.toJson(),
        "guaranteed_non_refundable": guaranteedNonRefundable,
        "type_translation":
            cancellationTypeTranslationValues.reverse[typeTranslation],
        "non_refundable_anymore": nonRefundableAnymore,
        "type": cancellationTypeValues.reverse[type],
      };
}

enum Bucket { SMP_NON_REF, SMP_FULLY_FLEX }

final bucketValues = EnumValues({
  "SMP_FULLY_FLEX": Bucket.SMP_FULLY_FLEX,
  "SMP_NON_REF": Bucket.SMP_NON_REF
});

class CancellationInfo {
  CancellationInfo({
    this.timezoneOffset,
    this.date,
    this.dateBeforeRaw,
    this.dateBefore,
    this.timezone,
    this.time,
    this.dateRaw,
    this.isMidnight,
    this.timeBeforeMidnight,
    this.refundable,
  });

  String? timezoneOffset;
  Date? date;
  DateTime? dateBeforeRaw;
  DateBefore? dateBefore;
  String? timezone;
  Time? time;
  DateTime? dateRaw;
  String? isMidnight;
  dynamic timeBeforeMidnight;
  int? refundable;

  factory CancellationInfo.fromJson(Map<String, dynamic> json) =>
      CancellationInfo(
        timezoneOffset: json["timezone_offset"],
        date: dateValues.map[json["date"]]!,
        dateBeforeRaw: json["date_before_raw"] == null
            ? null
            : DateTime.parse(json["date_before_raw"]),
        dateBefore: dateBeforeValues.map[json["date_before"]]!,
        timezone: json["timezone"],
        time: timeValues.map[json["time"]]!,
        dateRaw:
            json["date_raw"] == null ? null : DateTime.parse(json["date_raw"]),
        isMidnight: json["is_midnight"],
        timeBeforeMidnight: json["time_before_midnight"],
        refundable: json["refundable"],
      );

  Map<String, dynamic> toJson() => {
        "timezone_offset": timezoneOffset,
        "date": dateValues.reverse[date],
        "date_before_raw":
            "${dateBeforeRaw!.year.toString().padLeft(4, '0')}-${dateBeforeRaw!.month.toString().padLeft(2, '0')}-${dateBeforeRaw!.day.toString().padLeft(2, '0')}",
        "date_before": dateBeforeValues.reverse[dateBefore],
        "timezone": timezone,
        "time": timeValues.reverse[time],
        "date_raw": dateRaw?.toIso8601String(),
        "is_midnight": isMidnight,
        "time_before_midnight": timeBeforeMidnight,
        "refundable": refundable,
      };
}

enum Date { THE_27_MAY_2023, THE_22_MARCH_2023 }

final dateValues = EnumValues({
  "22 March 2023": Date.THE_22_MARCH_2023,
  "27 May 2023": Date.THE_27_MAY_2023
});

enum DateBefore { THE_26_MAY_2023 }

final dateBeforeValues =
    EnumValues({"26 May 2023": DateBefore.THE_26_MAY_2023});

enum Time { THE_1600, THE_1801, THE_1501, THE_1559 }

final timeValues = EnumValues({
  "15:01": Time.THE_1501,
  "15:59": Time.THE_1559,
  "16:00": Time.THE_1600,
  "18:01": Time.THE_1801
});

class CancellationTimeline {
  CancellationTimeline({
    this.nrStages,
    this.uCurrencyCode,
    this.policygroupInstanceId,
    this.currencyCode,
    this.stages,
  });

  int? nrStages;
  Currency? uCurrencyCode;
  PolicygroupInstanceId? policygroupInstanceId;
  Currency? currencyCode;
  List<PurpleStage>? stages;

  factory CancellationTimeline.fromJson(Map<String, dynamic> json) =>
      CancellationTimeline(
        nrStages: json["nr_stages"],
        uCurrencyCode: currencyValues.map[json["u_currency_code"]]!,
        policygroupInstanceId:
            policygroupInstanceIdValues.map[json["policygroup_instance_id"]]!,
        currencyCode: currencyValues.map[json["currency_code"]]!,
        stages: json["stages"] == null
            ? []
            : List<PurpleStage>.from(
                json["stages"]!.map((x) => PurpleStage.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nr_stages": nrStages,
        "u_currency_code": currencyValues.reverse[uCurrencyCode],
        "policygroup_instance_id":
            policygroupInstanceIdValues.reverse[policygroupInstanceId],
        "currency_code": currencyValues.reverse[currencyCode],
        "stages": stages == null
            ? []
            : List<dynamic>.from(stages!.map((x) => x.toJson())),
      };
}

enum PolicygroupInstanceId { THE_11, THE_163152 }

final policygroupInstanceIdValues = EnumValues({
  "1/1/-": PolicygroupInstanceId.THE_11,
  "163/152/-": PolicygroupInstanceId.THE_163152
});

class PurpleStage {
  PurpleStage({
    this.uFeeRemainingPretty,
    this.limitFromDate,
    this.feeRemaining,
    this.feePretty,
    this.feeRemainingPretty,
    this.bState,
    this.limitUntilRaw,
    this.fee,
    this.uStageFeePretty,
    this.currentStage,
    this.limitFrom,
    this.uFeeRemaining,
    this.isFree,
    this.stageFee,
    this.amount,
    this.stageTranslation,
    this.textRefundable,
    this.feeRounded,
    this.limitFromTime,
    this.uFeePretty,
    this.isEffective,
    this.limitFromRaw,
    this.uFee,
    this.bNumber,
    this.limitUntilDate,
    this.limitUntil,
    this.amountPretty,
    this.text,
    this.uStageFee,
    this.limitTimezone,
    this.stageFeePretty,
    this.limitUntilTime,
    this.effectiveNumber,
    this.dateUntil,
    this.dateFrom,
  });

  String? uFeeRemainingPretty;
  Date? limitFromDate;
  double? feeRemaining;
  String? feePretty;
  String? feeRemainingPretty;
  BState? bState;
  DateTime? limitUntilRaw;
  double? fee;
  String? uStageFeePretty;
  int? currentStage;
  Limit? limitFrom;
  String? uFeeRemaining;
  int? isFree;
  double? stageFee;
  dynamic amount;
  StageTranslation? stageTranslation;
  String? textRefundable;
  int? feeRounded;
  Time? limitFromTime;
  String? uFeePretty;
  int? isEffective;
  DateTime? limitFromRaw;
  String? uFee;
  int? bNumber;
  Date? limitUntilDate;
  Limit? limitUntil;
  String? amountPretty;
  PurpleText? text;
  String? uStageFee;
  LimitTimezone? limitTimezone;
  String? stageFeePretty;
  Time? limitUntilTime;
  int? effectiveNumber;
  EUntil? dateUntil;
  DateFrom? dateFrom;

  factory PurpleStage.fromJson(Map<String, dynamic> json) => PurpleStage(
        uFeeRemainingPretty: json["u_fee_remaining_pretty"],
        limitFromDate: dateValues.map[json["limit_from_date"]]!,
        feeRemaining: json["fee_remaining"]?.toDouble(),
        feePretty: json["fee_pretty"],
        feeRemainingPretty: json["fee_remaining_pretty"],
        bState: bStateValues.map[json["b_state"]]!,
        limitUntilRaw: json["limit_until_raw"] == null
            ? null
            : DateTime.parse(json["limit_until_raw"]),
        fee: json["fee"]?.toDouble(),
        uStageFeePretty: json["u_stage_fee_pretty"],
        currentStage: json["current_stage"],
        limitFrom: limitValues.map[json["limit_from"]]!,
        uFeeRemaining: json["u_fee_remaining"],
        isFree: json["is_free"],
        stageFee: json["stage_fee"]?.toDouble(),
        amount: json["amount"],
        stageTranslation:
            stageTranslationValues.map[json["stage_translation"]]!,
        textRefundable: json["text_refundable"],
        feeRounded: json["fee_rounded"],
        limitFromTime: timeValues.map[json["limit_from_time"]]!,
        uFeePretty: json["u_fee_pretty"],
        isEffective: json["is_effective"],
        limitFromRaw: json["limit_from_raw"] == null
            ? null
            : DateTime.parse(json["limit_from_raw"]),
        uFee: json["u_fee"],
        bNumber: json["b_number"],
        limitUntilDate: dateValues.map[json["limit_until_date"]]!,
        limitUntil: limitValues.map[json["limit_until"]]!,
        amountPretty: json["amount_pretty"],
        text: purpleTextValues.map[json["text"]]!,
        uStageFee: json["u_stage_fee"],
        limitTimezone: limitTimezoneValues.map[json["limit_timezone"]]!,
        stageFeePretty: json["stage_fee_pretty"],
        limitUntilTime: timeValues.map[json["limit_until_time"]]!,
        effectiveNumber: json["effective_number"],
        dateUntil: eUntilValues.map[json["date_until"]]!,
        dateFrom: dateFromValues.map[json["date_from"]]!,
      );

  Map<String, dynamic> toJson() => {
        "u_fee_remaining_pretty": uFeeRemainingPretty,
        "limit_from_date": dateValues.reverse[limitFromDate],
        "fee_remaining": feeRemaining,
        "fee_pretty": feePretty,
        "fee_remaining_pretty": feeRemainingPretty,
        "b_state": bStateValues.reverse[bState],
        "limit_until_raw": limitUntilRaw?.toIso8601String(),
        "fee": fee,
        "u_stage_fee_pretty": uStageFeePretty,
        "current_stage": currentStage,
        "limit_from": limitValues.reverse[limitFrom],
        "u_fee_remaining": uFeeRemaining,
        "is_free": isFree,
        "stage_fee": stageFee,
        "amount": amount,
        "stage_translation": stageTranslationValues.reverse[stageTranslation],
        "text_refundable": textRefundable,
        "fee_rounded": feeRounded,
        "limit_from_time": timeValues.reverse[limitFromTime],
        "u_fee_pretty": uFeePretty,
        "is_effective": isEffective,
        "limit_from_raw": limitFromRaw?.toIso8601String(),
        "u_fee": uFee,
        "b_number": bNumber,
        "limit_until_date": dateValues.reverse[limitUntilDate],
        "limit_until": limitValues.reverse[limitUntil],
        "amount_pretty": amountPretty,
        "text": purpleTextValues.reverse[text],
        "u_stage_fee": uStageFee,
        "limit_timezone": limitTimezoneValues.reverse[limitTimezone],
        "stage_fee_pretty": stageFeePretty,
        "limit_until_time": timeValues.reverse[limitUntilTime],
        "effective_number": effectiveNumber,
        "date_until": eUntilValues.reverse[dateUntil],
        "date_from": dateFromValues.reverse[dateFrom],
      };
}

enum BState { NONREF, FREE }

final bStateValues = EnumValues({"FREE": BState.FREE, "NONREF": BState.NONREF});

enum DateFrom { THE_202305271600000400 }

final dateFromValues =
    EnumValues({"2023-05-27 16:00:00 +0400": DateFrom.THE_202305271600000400});

enum EUntil { THE_202305271559590400, EMPTY }

final eUntilValues = EnumValues({
  "": EUntil.EMPTY,
  "2023-05-27 15:59:59 +0400": EUntil.THE_202305271559590400
});

enum Limit {
  THE_22_MARCH_20231801,
  THE_27_MAY_20231600,
  THE_22_MARCH_20231501,
  THE_27_MAY_20231559
}

final limitValues = EnumValues({
  "22 March 2023 15:01": Limit.THE_22_MARCH_20231501,
  "22 March 2023 18:01": Limit.THE_22_MARCH_20231801,
  "27 May 2023 15:59": Limit.THE_27_MAY_20231559,
  "27 May 2023 16:00": Limit.THE_27_MAY_20231600
});

enum LimitTimezone { BATUMI }

final limitTimezoneValues = EnumValues({"Batumi": LimitTimezone.BATUMI});

enum StageTranslation { NO_REFUND_IF_YOU_CANCEL, FREE_TO_CANCEL }

final stageTranslationValues = EnumValues({
  "Free to cancel": StageTranslation.FREE_TO_CANCEL,
  "No refund if you cancel": StageTranslation.NO_REFUND_IF_YOU_CANCEL
});

enum PurpleText {
  IF_YOU_CANCEL_YOU_LL_PAY,
  FREE_CANCELLATION_UNTIL_1559_ON_27_MAY,
  FROM_1600_ON_27_MAY
}

final purpleTextValues = EnumValues({
  "Free cancellation until 15:59 on 27 May":
      PurpleText.FREE_CANCELLATION_UNTIL_1559_ON_27_MAY,
  "From 16:00 on 27 May": PurpleText.FROM_1600_ON_27_MAY,
  "If you cancel, you'll pay": PurpleText.IF_YOU_CANCEL_YOU_LL_PAY
});

enum CancellationType { NON_REFUNDABLE, FREE_CANCELLATION }

final cancellationTypeValues = EnumValues({
  "free_cancellation": CancellationType.FREE_CANCELLATION,
  "non_refundable": CancellationType.NON_REFUNDABLE
});

enum CancellationTypeTranslation { NON_REFUNDABLE, FREE_TO_CANCEL }

final cancellationTypeTranslationValues = EnumValues({
  "Free to cancel": CancellationTypeTranslation.FREE_TO_CANCEL,
  "Non-refundable": CancellationTypeTranslation.NON_REFUNDABLE
});

class Prepayment {
  Prepayment({
    this.timeline,
    this.description,
    this.info,
    this.typeTranslation,
    this.simpleTranslation,
    this.extendedTypeTranslation,
    this.typeExtended,
    this.type,
  });

  PrepaymentTimeline? timeline;
  Description? description;
  PrepaymentInfo? info;
  ExtendedTypeTranslationEnum? typeTranslation;
  SimpleTranslation? simpleTranslation;
  ExtendedTypeTranslationEnum? extendedTypeTranslation;
  TypeExtended? typeExtended;
  PrepaymentType? type;

  factory Prepayment.fromJson(Map<String, dynamic> json) => Prepayment(
        timeline: json["timeline"] == null
            ? null
            : PrepaymentTimeline.fromJson(json["timeline"]),
        description: descriptionValues.map[json["description"]]!,
        info:
            json["info"] == null ? null : PrepaymentInfo.fromJson(json["info"]),
        typeTranslation:
            extendedTypeTranslationEnumValues.map[json["type_translation"]]!,
        simpleTranslation:
            simpleTranslationValues.map[json["simple_translation"]]!,
        extendedTypeTranslation: extendedTypeTranslationEnumValues
            .map[json["extended_type_translation"]]!,
        typeExtended: typeExtendedValues.map[json["type_extended"]]!,
        type: prepaymentTypeValues.map[json["type"]]!,
      );

  Map<String, dynamic> toJson() => {
        "timeline": timeline?.toJson(),
        "description": descriptionValues.reverse[description],
        "info": info?.toJson(),
        "type_translation":
            extendedTypeTranslationEnumValues.reverse[typeTranslation],
        "simple_translation":
            simpleTranslationValues.reverse[simpleTranslation],
        "extended_type_translation":
            extendedTypeTranslationEnumValues.reverse[extendedTypeTranslation],
        "type_extended": typeExtendedValues.reverse[typeExtended],
        "type": prepaymentTypeValues.reverse[type],
      };
}

enum Description {
  YOU_WILL_BE_CHARGED_A_PREPAYMENT_OF_THE_TOTAL_PRICE_AT_ANY_TIME,
  YOU_LL_PAY_DURING_YOUR_STAY
}

final descriptionValues = EnumValues({
  "You'll pay during your stay.": Description.YOU_LL_PAY_DURING_YOUR_STAY,
  "You will be charged a prepayment of the total price at any time.":
      Description
          .YOU_WILL_BE_CHARGED_A_PREPAYMENT_OF_THE_TOTAL_PRICE_AT_ANY_TIME
});

enum ExtendedTypeTranslationEnum {
  SECURE_YOUR_BOOKING_PAY_NOW,
  NO_PAYMENT_NEEDED_TODAY
}

final extendedTypeTranslationEnumValues = EnumValues({
  "No payment needed today":
      ExtendedTypeTranslationEnum.NO_PAYMENT_NEEDED_TODAY,
  "SECURE YOUR BOOKING - pay now":
      ExtendedTypeTranslationEnum.SECURE_YOUR_BOOKING_PAY_NOW
});

class PrepaymentInfo {
  PrepaymentInfo({
    this.date,
    this.timezoneOffset,
    this.dateBefore,
    this.timezone,
    this.prepaymentAtBooktime,
    this.time,
    this.refundable,
    this.isMidnight,
    this.timeBeforeMidnight,
  });

  dynamic date;
  dynamic timezoneOffset;
  dynamic dateBefore;
  dynamic timezone;
  int? prepaymentAtBooktime;
  dynamic time;
  dynamic refundable;
  dynamic isMidnight;
  dynamic timeBeforeMidnight;

  factory PrepaymentInfo.fromJson(Map<String, dynamic> json) => PrepaymentInfo(
        date: json["date"],
        timezoneOffset: json["timezone_offset"],
        dateBefore: json["date_before"],
        timezone: json["timezone"],
        prepaymentAtBooktime: json["prepayment_at_booktime"],
        time: json["time"],
        refundable: json["refundable"],
        isMidnight: json["is_midnight"],
        timeBeforeMidnight: json["time_before_midnight"],
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "timezone_offset": timezoneOffset,
        "date_before": dateBefore,
        "timezone": timezone,
        "prepayment_at_booktime": prepaymentAtBooktime,
        "time": time,
        "refundable": refundable,
        "is_midnight": isMidnight,
        "time_before_midnight": timeBeforeMidnight,
      };
}

enum RefundableEnum { ANYTIME }

final refundableEnumValues = EnumValues({"anytime": RefundableEnum.ANYTIME});

enum SimpleTranslation { PREPAYMENT, NO_PREPAYMENT }

final simpleTranslationValues = EnumValues({
  "No prepayment": SimpleTranslation.NO_PREPAYMENT,
  "Prepayment": SimpleTranslation.PREPAYMENT
});

class PrepaymentTimeline {
  PrepaymentTimeline({
    this.stages,
    this.currencyCode,
    this.nrStages,
    this.policygroupInstanceId,
    this.uCurrencyCode,
  });

  List<FluffyStage>? stages;
  Currency? currencyCode;
  int? nrStages;
  PolicygroupInstanceId? policygroupInstanceId;
  Currency? uCurrencyCode;

  factory PrepaymentTimeline.fromJson(Map<String, dynamic> json) =>
      PrepaymentTimeline(
        stages: json["stages"] == null
            ? []
            : List<FluffyStage>.from(
                json["stages"]!.map((x) => FluffyStage.fromJson(x))),
        currencyCode: currencyValues.map[json["currency_code"]]!,
        nrStages: json["nr_stages"],
        policygroupInstanceId:
            policygroupInstanceIdValues.map[json["policygroup_instance_id"]]!,
        uCurrencyCode: currencyValues.map[json["u_currency_code"]]!,
      );

  Map<String, dynamic> toJson() => {
        "stages": stages == null
            ? []
            : List<dynamic>.from(stages!.map((x) => x.toJson())),
        "currency_code": currencyValues.reverse[currencyCode],
        "nr_stages": nrStages,
        "policygroup_instance_id":
            policygroupInstanceIdValues.reverse[policygroupInstanceId],
        "u_currency_code": currencyValues.reverse[uCurrencyCode],
      };
}

class FluffyStage {
  FluffyStage({
    this.text,
    this.uStageFee,
    this.amountPretty,
    this.effectiveNumber,
    this.limitTimezone,
    this.limitUntilTime,
    this.stageFeePretty,
    this.uFeePretty,
    this.isEffective,
    this.limitFromRaw,
    this.feeRounded,
    this.limitFromTime,
    this.uFee,
    this.bNumber,
    this.limitUntilDate,
    this.limitUntil,
    this.fee,
    this.uStageFeePretty,
    this.stageFee,
    this.amount,
    this.currentStage,
    this.uFeeRemaining,
    this.limitFrom,
    this.isFree,
    this.limitFromDate,
    this.feeRemaining,
    this.feePretty,
    this.uFeeRemainingPretty,
    this.limitUntilRaw,
    this.bState,
    this.feeRemainingPretty,
    this.afterCheckin,
  });

  FluffyText? text;
  String? uStageFee;
  String? amountPretty;
  int? effectiveNumber;
  LimitTimezone? limitTimezone;
  LimitUntilTime? limitUntilTime;
  String? stageFeePretty;
  String? uFeePretty;
  int? isEffective;
  DateTime? limitFromRaw;
  int? feeRounded;
  Time? limitFromTime;
  dynamic uFee;
  int? bNumber;
  Date? limitUntilDate;
  LimitUntil? limitUntil;
  double? fee;
  String? uStageFeePretty;
  double? stageFee;
  String? amount;
  int? currentStage;
  String? uFeeRemaining;
  Limit? limitFrom;
  int? isFree;
  Date? limitFromDate;
  double? feeRemaining;
  String? feePretty;
  String? uFeeRemainingPretty;
  DateTime? limitUntilRaw;
  BState? bState;
  String? feeRemainingPretty;
  int? afterCheckin;

  factory FluffyStage.fromJson(Map<String, dynamic> json) => FluffyStage(
        text: fluffyTextValues.map[json["text"]]!,
        uStageFee: json["u_stage_fee"],
        amountPretty: json["amount_pretty"],
        effectiveNumber: json["effective_number"],
        limitTimezone: limitTimezoneValues.map[json["limit_timezone"]]!,
        limitUntilTime: limitUntilTimeValues.map[json["limit_until_time"]]!,
        stageFeePretty: json["stage_fee_pretty"],
        uFeePretty: json["u_fee_pretty"],
        isEffective: json["is_effective"],
        limitFromRaw: json["limit_from_raw"] == null
            ? null
            : DateTime.parse(json["limit_from_raw"]),
        feeRounded: json["fee_rounded"],
        limitFromTime: timeValues.map[json["limit_from_time"]]!,
        uFee: json["u_fee"],
        bNumber: json["b_number"],
        limitUntilDate: dateValues.map[json["limit_until_date"]]!,
        limitUntil: limitUntilValues.map[json["limit_until"]]!,
        fee: json["fee"]?.toDouble(),
        uStageFeePretty: json["u_stage_fee_pretty"],
        stageFee: json["stage_fee"]?.toDouble(),
        amount: json["amount"],
        currentStage: json["current_stage"],
        uFeeRemaining: json["u_fee_remaining"],
        limitFrom: limitValues.map[json["limit_from"]]!,
        isFree: json["is_free"],
        limitFromDate: dateValues.map[json["limit_from_date"]]!,
        feeRemaining: json["fee_remaining"]?.toDouble(),
        feePretty: json["fee_pretty"],
        uFeeRemainingPretty: json["u_fee_remaining_pretty"],
        limitUntilRaw: json["limit_until_raw"] == null
            ? null
            : DateTime.parse(json["limit_until_raw"]),
        bState: bStateValues.map[json["b_state"]]!,
        feeRemainingPretty: json["fee_remaining_pretty"],
        afterCheckin: json["after_checkin"],
      );

  Map<String, dynamic> toJson() => {
        "text": fluffyTextValues.reverse[text],
        "u_stage_fee": uStageFee,
        "amount_pretty": amountPretty,
        "effective_number": effectiveNumber,
        "limit_timezone": limitTimezoneValues.reverse[limitTimezone],
        "limit_until_time": limitUntilTimeValues.reverse[limitUntilTime],
        "stage_fee_pretty": stageFeePretty,
        "u_fee_pretty": uFeePretty,
        "is_effective": isEffective,
        "limit_from_raw": limitFromRaw?.toIso8601String(),
        "fee_rounded": feeRounded,
        "limit_from_time": timeValues.reverse[limitFromTime],
        "u_fee": uFee,
        "b_number": bNumber,
        "limit_until_date": dateValues.reverse[limitUntilDate],
        "limit_until": limitUntilValues.reverse[limitUntil],
        "fee": fee,
        "u_stage_fee_pretty": uStageFeePretty,
        "stage_fee": stageFee,
        "amount": amount,
        "current_stage": currentStage,
        "u_fee_remaining": uFeeRemaining,
        "limit_from": limitValues.reverse[limitFrom],
        "is_free": isFree,
        "limit_from_date": dateValues.reverse[limitFromDate],
        "fee_remaining": feeRemaining,
        "fee_pretty": feePretty,
        "u_fee_remaining_pretty": uFeeRemainingPretty,
        "limit_until_raw": limitUntilRaw?.toIso8601String(),
        "b_state": bStateValues.reverse[bState],
        "fee_remaining_pretty": feeRemainingPretty,
        "after_checkin": afterCheckin,
      };
}

enum LimitUntil {
  THE_22_MARCH_20231801,
  THE_27_MAY_20232359,
  THE_22_MARCH_20231501
}

final limitUntilValues = EnumValues({
  "22 March 2023 15:01": LimitUntil.THE_22_MARCH_20231501,
  "22 March 2023 18:01": LimitUntil.THE_22_MARCH_20231801,
  "27 May 2023 23:59": LimitUntil.THE_27_MAY_20232359
});

enum LimitUntilTime { THE_1801, THE_2359, THE_1501 }

final limitUntilTimeValues = EnumValues({
  "15:01": LimitUntilTime.THE_1501,
  "18:01": LimitUntilTime.THE_1801,
  "23:59": LimitUntilTime.THE_2359
});

enum FluffyText { BEFORE_YOU_STAY_YOU_LL_PAY, AT_THE_PROPERTY_YOU_LL_PAY }

final fluffyTextValues = EnumValues({
  "At the property you'll pay": FluffyText.AT_THE_PROPERTY_YOU_LL_PAY,
  "Before you stay you'll pay": FluffyText.BEFORE_YOU_STAY_YOU_LL_PAY
});

enum PrepaymentType { FULL_PREPAYMENT, NO_PREPAYMENT }

final prepaymentTypeValues = EnumValues({
  "full_prepayment": PrepaymentType.FULL_PREPAYMENT,
  "no_prepayment": PrepaymentType.NO_PREPAYMENT
});

enum TypeExtended { NON_REFUNDABLE_PREPAYMENT }

final typeExtendedValues = EnumValues(
    {"non_refundable_prepayment": TypeExtended.NON_REFUNDABLE_PREPAYMENT});

class PriceBreakdown {
  PriceBreakdown({
    this.excludedChargesDetail,
    this.grossPrice,
    this.hasIncalculableCharges,
    this.sumExcludedRaw,
    this.currency,
    this.hasTaxExceptions,
    this.hasFinePrintCharges,
    this.allInclusivePrice,
  });

  dynamic excludedChargesDetail;
  dynamic grossPrice;
  int? hasIncalculableCharges;
  String? sumExcludedRaw;
  Currency? currency;
  int? hasTaxExceptions;
  int? hasFinePrintCharges;
  double? allInclusivePrice;

  factory PriceBreakdown.fromJson(Map<String, dynamic> json) => PriceBreakdown(
        excludedChargesDetail: json["excluded_charges_detail"],
        grossPrice: json["gross_price"],
        hasIncalculableCharges: json["has_incalculable_charges"],
        sumExcludedRaw: json["sum_excluded_raw"],
        currency: currencyValues.map[json["currency"]]!,
        hasTaxExceptions: json["has_tax_exceptions"],
        hasFinePrintCharges: json["has_fine_print_charges"],
        allInclusivePrice: json["all_inclusive_price"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "excluded_charges_detail": excludedChargesDetail,
        "gross_price": grossPrice,
        "has_incalculable_charges": hasIncalculableCharges,
        "sum_excluded_raw": sumExcludedRaw,
        "currency": currencyValues.reverse[currency],
        "has_tax_exceptions": hasTaxExceptions,
        "has_fine_print_charges": hasFinePrintCharges,
        "all_inclusive_price": allInclusivePrice,
      };
}

class ProductPriceBreakdown {
  ProductPriceBreakdown({
    this.includedTaxesAndChargesAmount,
    this.grossAmountHotelCurrency,
    this.grossAmountPerNight,
    this.allInclusiveAmount,
    this.grossAmount,
    this.nrStays,
    this.netAmount,
    this.benefits,
    this.excludedAmount,
    this.items,
  });

  AllInclusiveAmount? includedTaxesAndChargesAmount;
  AllInclusiveAmount? grossAmountHotelCurrency;
  AllInclusiveAmount? grossAmountPerNight;
  AllInclusiveAmount? allInclusiveAmount;
  AllInclusiveAmount? grossAmount;
  int? nrStays;
  AllInclusiveAmount? netAmount;
  List<dynamic>? benefits;
  AllInclusiveAmount? excludedAmount;
  List<Item>? items;

  factory ProductPriceBreakdown.fromJson(Map<String, dynamic> json) =>
      ProductPriceBreakdown(
        includedTaxesAndChargesAmount:
            json["included_taxes_and_charges_amount"] == null
                ? null
                : AllInclusiveAmount.fromJson(
                    json["included_taxes_and_charges_amount"]),
        grossAmountHotelCurrency: json["gross_amount_hotel_currency"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["gross_amount_hotel_currency"]),
        grossAmountPerNight: json["gross_amount_per_night"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["gross_amount_per_night"]),
        allInclusiveAmount: json["all_inclusive_amount"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["all_inclusive_amount"]),
        grossAmount: json["gross_amount"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["gross_amount"]),
        nrStays: json["nr_stays"],
        netAmount: json["net_amount"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["net_amount"]),
        benefits: json["benefits"] == null
            ? []
            : List<dynamic>.from(json["benefits"]!.map((x) => x)),
        excludedAmount: json["excluded_amount"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["excluded_amount"]),
        items: json["items"] == null
            ? []
            : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "included_taxes_and_charges_amount":
            includedTaxesAndChargesAmount?.toJson(),
        "gross_amount_hotel_currency": grossAmountHotelCurrency?.toJson(),
        "gross_amount_per_night": grossAmountPerNight?.toJson(),
        "all_inclusive_amount": allInclusiveAmount?.toJson(),
        "gross_amount": grossAmount?.toJson(),
        "nr_stays": nrStays,
        "net_amount": netAmount?.toJson(),
        "benefits":
            benefits == null ? [] : List<dynamic>.from(benefits!.map((x) => x)),
        "excluded_amount": excludedAmount?.toJson(),
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class AllInclusiveAmount {
  AllInclusiveAmount({
    this.currency,
    this.value,
  });

  Currency? currency;
  double? value;

  factory AllInclusiveAmount.fromJson(Map<String, dynamic> json) =>
      AllInclusiveAmount(
        currency: currencyValues.map[json["currency"]]!,
        value: json["value"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "currency": currencyValues.reverse[currency],
        "value": value,
      };
}

class Item {
  Item({
    this.details,
    this.base,
    this.itemAmount,
    this.name,
    this.inclusionType,
    this.kind,
  });

  Details? details;
  Base? base;
  AllInclusiveAmount? itemAmount;
  Name? name;
  InclusionType? inclusionType;
  ItemKind? kind;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        details: detailsValues.map[json["details"]]!,
        base: json["base"] == null ? null : Base.fromJson(json["base"]),
        itemAmount: json["item_amount"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["item_amount"]),
        name: nameValues.map[json["name"]]!,
        inclusionType: inclusionTypeValues.map[json["inclusion_type"]]!,
        kind: itemKindValues.map[json["kind"]]!,
      );

  Map<String, dynamic> toJson() => {
        "details": detailsValues.reverse[details],
        "base": base?.toJson(),
        "item_amount": itemAmount?.toJson(),
        "name": nameValues.reverse[name],
        "inclusion_type": inclusionTypeValues.reverse[inclusionType],
        "kind": itemKindValues.reverse[kind],
      };
}

class Base {
  Base({
    this.kind,
    this.percentage,
  });

  BaseKind? kind;
  int? percentage;

  factory Base.fromJson(Map<String, dynamic> json) => Base(
        kind: baseKindValues.map[json["kind"]]!,
        percentage: json["percentage"],
      );

  Map<String, dynamic> toJson() => {
        "kind": baseKindValues.reverse[kind],
        "percentage": percentage,
      };
}

enum BaseKind { PERCENTAGE }

final baseKindValues = EnumValues({"percentage": BaseKind.PERCENTAGE});

enum Details { THE_18_VAT }

final detailsValues = EnumValues({"18 % VAT": Details.THE_18_VAT});

enum ItemKind { CHARGE }

final itemKindValues = EnumValues({"charge": ItemKind.CHARGE});

class RackRate {
  RackRate({
    this.currency,
    this.price,
  });

  Currency? currency;
  String? price;

  factory RackRate.fromJson(Map<String, dynamic> json) => RackRate(
        currency: currencyValues.map[json["currency"]]!,
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "currency": currencyValues.reverse[currency],
        "price": price,
      };
}

enum RoomName {
  SUPERIOR_ROOM,
  PREMIUM_ROOM,
  FAMILY_ROOM,
  JUNIOR_SUITE,
  SPA_SUITE_WITH_SEA_VIEW,
  SUITE,
  FAMILY_SUITE_WITH_SEA_VIEW
}

final roomNameValues = EnumValues({
  "Family Room": RoomName.FAMILY_ROOM,
  "Family Suite with Sea View": RoomName.FAMILY_SUITE_WITH_SEA_VIEW,
  "Junior Suite": RoomName.JUNIOR_SUITE,
  "Premium Room": RoomName.PREMIUM_ROOM,
  "SPA Suite with Sea View": RoomName.SPA_SUITE_WITH_SEA_VIEW,
  "Suite": RoomName.SUITE,
  "Superior Room": RoomName.SUPERIOR_ROOM
});

class TransactionalPolicyObject {
  TransactionalPolicyObject({
    this.text,
    this.key,
    this.icon,
  });

  TransactionalPolicyObjectText? text;
  Key? key;
  TransactionalPolicyObjectIcon? icon;

  factory TransactionalPolicyObject.fromJson(Map<String, dynamic> json) =>
      TransactionalPolicyObject(
        text: transactionalPolicyObjectTextValues.map[json["text"]]!,
        key: keyValues.map[json["key"]]!,
        icon: transactionalPolicyObjectIconValues.map[json["icon"]]!,
      );

  Map<String, dynamic> toJson() => {
        "text": transactionalPolicyObjectTextValues.reverse[text],
        "key": keyValues.reverse[key],
        "icon": transactionalPolicyObjectIconValues.reverse[icon],
      };
}

enum TransactionalPolicyObjectIcon {
  IC_CANCELLATION_NON_REFUNDABLE,
  BUI_WALLET,
  BUI_CHECKMARK,
  BUI_CLOCK
}

final transactionalPolicyObjectIconValues = EnumValues({
  "bui_checkmark": TransactionalPolicyObjectIcon.BUI_CHECKMARK,
  "bui_clock": TransactionalPolicyObjectIcon.BUI_CLOCK,
  "bui_wallet": TransactionalPolicyObjectIcon.BUI_WALLET,
  "ic_cancellation_non_refundable":
      TransactionalPolicyObjectIcon.IC_CANCELLATION_NON_REFUNDABLE
});

enum Key {
  NON_REFUNDABLE_KEY,
  WITH_PREPAYMENT_KEY,
  FREE_CANCELLATION_KEY,
  NO_PREPAYMENT_KEY
}

final keyValues = EnumValues({
  "FreeCancellationKey": Key.FREE_CANCELLATION_KEY,
  "NonRefundableKey": Key.NON_REFUNDABLE_KEY,
  "NoPrepaymentKey": Key.NO_PREPAYMENT_KEY,
  "WithPrepaymentKey": Key.WITH_PREPAYMENT_KEY
});

enum TransactionalPolicyObjectText {
  NON_REFUNDABLE,
  PAY_IN_ADVANCE,
  FREE_CANCELLATION_UNTIL_0359_PM_ON_27_MAY,
  PAY_AT_THE_PROPERTY
}

final transactionalPolicyObjectTextValues = EnumValues({
  "Free cancellation until 03:59 PM on 27 May":
      TransactionalPolicyObjectText.FREE_CANCELLATION_UNTIL_0359_PM_ON_27_MAY,
  "Non-refundable": TransactionalPolicyObjectText.NON_REFUNDABLE,
  "Pay at the property": TransactionalPolicyObjectText.PAY_AT_THE_PROPERTY,
  "Pay in advance": TransactionalPolicyObjectText.PAY_IN_ADVANCE
});

class Room {
  Room({
    this.isHighFloorGuaranteed,
    this.bedConfigurations,
    this.description,
    this.privateBathroomCount,
    this.photosMaySorted,
    this.childrenAndBedsText,
    this.privateBathroomHighlight,
    this.facilities,
    this.highlights,
    this.photos,
  });

  int? isHighFloorGuaranteed;
  List<BedConfiguration>? bedConfigurations;
  String? description;
  int? privateBathroomCount;
  int? photosMaySorted;
  ChildrenAndBedsText? childrenAndBedsText;
  PrivateBathroomHighlight? privateBathroomHighlight;
  List<Facility>? facilities;
  List<Highlight>? highlights;
  List<Photo>? photos;

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        isHighFloorGuaranteed: json["is_high_floor_guaranteed"],
        bedConfigurations: json["bed_configurations"] == null
            ? []
            : List<BedConfiguration>.from(json["bed_configurations"]!
                .map((x) => BedConfiguration.fromJson(x))),
        description: json["description"],
        privateBathroomCount: json["private_bathroom_count"],
        photosMaySorted: json["photos_may_sorted"],
        childrenAndBedsText: json["children_and_beds_text"] == null
            ? null
            : ChildrenAndBedsText.fromJson(json["children_and_beds_text"]),
        privateBathroomHighlight: json["private_bathroom_highlight"] == null
            ? null
            : PrivateBathroomHighlight.fromJson(
                json["private_bathroom_highlight"]),
        facilities: json["facilities"] == null
            ? []
            : List<Facility>.from(
                json["facilities"]!.map((x) => Facility.fromJson(x))),
        highlights: json["highlights"] == null
            ? []
            : List<Highlight>.from(
                json["highlights"]!.map((x) => Highlight.fromJson(x))),
        photos: json["photos"] == null
            ? []
            : List<Photo>.from(json["photos"]!.map((x) => Photo.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "is_high_floor_guaranteed": isHighFloorGuaranteed,
        "bed_configurations": bedConfigurations == null
            ? []
            : List<dynamic>.from(bedConfigurations!.map((x) => x.toJson())),
        "description": description,
        "private_bathroom_count": privateBathroomCount,
        "photos_may_sorted": photosMaySorted,
        "children_and_beds_text": childrenAndBedsText?.toJson(),
        "private_bathroom_highlight": privateBathroomHighlight?.toJson(),
        "facilities": facilities == null
            ? []
            : List<dynamic>.from(facilities!.map((x) => x.toJson())),
        "highlights": highlights == null
            ? []
            : List<dynamic>.from(highlights!.map((x) => x.toJson())),
        "photos": photos == null
            ? []
            : List<dynamic>.from(photos!.map((x) => x.toJson())),
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
    this.name,
    this.nameWithCount,
    this.bedType,
    this.count,
    this.description,
    this.descriptionImperial,
    this.descriptionLocalized,
  });

  String? name;
  String? nameWithCount;
  int? bedType;
  int? count;
  String? description;
  String? descriptionImperial;
  dynamic descriptionLocalized;

  factory BedType.fromJson(Map<String, dynamic> json) => BedType(
        name: json["name"],
        nameWithCount: json["name_with_count"],
        bedType: json["bed_type"],
        count: json["count"],
        description: json["description"],
        descriptionImperial: json["description_imperial"],
        descriptionLocalized: json["description_localized"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "name_with_count": nameWithCount,
        "bed_type": bedType,
        "count": count,
        "description": description,
        "description_imperial": descriptionImperial,
        "description_localized": descriptionLocalized,
      };
}

class ChildrenAndBedsText {
  ChildrenAndBedsText({
    this.ageIntervals,
    this.cribsAndExtraBeds,
    this.childrenAtTheProperty,
    this.allowChildren,
  });

  List<AgeInterval>? ageIntervals;
  List<ChildrenAtTheProperty>? cribsAndExtraBeds;
  List<ChildrenAtTheProperty>? childrenAtTheProperty;
  int? allowChildren;

  factory ChildrenAndBedsText.fromJson(Map<String, dynamic> json) =>
      ChildrenAndBedsText(
        ageIntervals: json["age_intervals"] == null
            ? []
            : List<AgeInterval>.from(
                json["age_intervals"]!.map((x) => AgeInterval.fromJson(x))),
        cribsAndExtraBeds: json["cribs_and_extra_beds"] == null
            ? []
            : List<ChildrenAtTheProperty>.from(json["cribs_and_extra_beds"]!
                .map((x) => ChildrenAtTheProperty.fromJson(x))),
        childrenAtTheProperty: json["children_at_the_property"] == null
            ? []
            : List<ChildrenAtTheProperty>.from(json["children_at_the_property"]!
                .map((x) => ChildrenAtTheProperty.fromJson(x))),
        allowChildren: json["allow_children"],
      );

  Map<String, dynamic> toJson() => {
        "age_intervals": ageIntervals == null
            ? []
            : List<dynamic>.from(ageIntervals!.map((x) => x.toJson())),
        "cribs_and_extra_beds": cribsAndExtraBeds == null
            ? []
            : List<dynamic>.from(cribsAndExtraBeds!.map((x) => x.toJson())),
        "children_at_the_property": childrenAtTheProperty == null
            ? []
            : List<dynamic>.from(childrenAtTheProperty!.map((x) => x.toJson())),
        "allow_children": allowChildren,
      };
}

class AgeInterval {
  AgeInterval({
    this.maxAge,
    this.crib,
    this.minAge,
    this.groupByPrice,
    this.typesByPrice,
    this.extraBed,
  });

  int? maxAge;
  Crib? crib;
  int? minAge;
  GroupByPrice? groupByPrice;
  List<List<TypesByPrice>>? typesByPrice;
  ExtraBed? extraBed;

  factory AgeInterval.fromJson(Map<String, dynamic> json) => AgeInterval(
        maxAge: json["max_age"],
        crib: json["crib"] == null ? null : Crib.fromJson(json["crib"]),
        minAge: json["min_age"],
        groupByPrice: json["group_by_price"] == null
            ? null
            : GroupByPrice.fromJson(json["group_by_price"]),
        typesByPrice: json["types_by_price"] == null
            ? []
            : List<List<TypesByPrice>>.from(json["types_by_price"]!.map((x) =>
                List<TypesByPrice>.from(
                    x.map((x) => typesByPriceValues.map[x]!)))),
        extraBed: json["extra_bed"] == null
            ? null
            : ExtraBed.fromJson(json["extra_bed"]),
      );

  Map<String, dynamic> toJson() => {
        "max_age": maxAge,
        "crib": crib?.toJson(),
        "min_age": minAge,
        "group_by_price": groupByPrice?.toJson(),
        "types_by_price": typesByPrice == null
            ? []
            : List<dynamic>.from(typesByPrice!.map((x) => List<dynamic>.from(
                x.map((x) => typesByPriceValues.reverse[x])))),
        "extra_bed": extraBed?.toJson(),
      };
}

class Crib {
  Crib({
    this.priceType,
    this.priceTypeN,
    this.price,
    this.priceMode,
    this.id,
    this.priceModeN,
  });

  String? priceType;
  int? priceTypeN;
  int? price;
  String? priceMode;
  int? id;
  int? priceModeN;

  factory Crib.fromJson(Map<String, dynamic> json) => Crib(
        priceType: json["price_type"],
        priceTypeN: json["price_type_n"],
        price: json["price"],
        priceMode: json["price_mode"],
        id: json["id"],
        priceModeN: json["price_mode_n"],
      );

  Map<String, dynamic> toJson() => {
        "price_type": priceType,
        "price_type_n": priceTypeN,
        "price": price,
        "price_mode": priceMode,
        "id": id,
        "price_mode_n": priceModeN,
      };
}

class ExtraBed {
  ExtraBed({
    this.priceType,
    this.price,
    this.priceTypeN,
    this.priceMode,
    this.priceModeN,
    this.id,
  });

  String? priceType;
  String? price;
  int? priceTypeN;
  String? priceMode;
  int? priceModeN;
  int? id;

  factory ExtraBed.fromJson(Map<String, dynamic> json) => ExtraBed(
        priceType: json["price_type"],
        price: json["price"],
        priceTypeN: json["price_type_n"],
        priceMode: json["price_mode"],
        priceModeN: json["price_mode_n"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "price_type": priceType,
        "price": price,
        "price_type_n": priceTypeN,
        "price_mode": priceMode,
        "price_mode_n": priceModeN,
        "id": id,
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
    this.highlight,
    this.text,
  });

  int? highlight;
  String? text;

  factory ChildrenAtTheProperty.fromJson(Map<String, dynamic> json) =>
      ChildrenAtTheProperty(
        highlight: json["highlight"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "highlight": highlight,
        "text": text,
      };
}

class Facility {
  Facility({
    this.altFacilitytypeName,
    this.facilitytypeId,
    this.id,
    this.facilitytypeName,
    this.altFacilitytypeId,
    this.name,
  });

  AltFacilitytypeName? altFacilitytypeName;
  int? facilitytypeId;
  int? id;
  FacilitytypeName? facilitytypeName;
  int? altFacilitytypeId;
  String? name;

  factory Facility.fromJson(Map<String, dynamic> json) => Facility(
        altFacilitytypeName:
            altFacilitytypeNameValues.map[json["alt_facilitytype_name"]]!,
        facilitytypeId: json["facilitytype_id"],
        id: json["id"],
        facilitytypeName:
            facilitytypeNameValues.map[json["facilitytype_name"]]!,
        altFacilitytypeId: json["alt_facilitytype_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "alt_facilitytype_name":
            altFacilitytypeNameValues.reverse[altFacilitytypeName],
        "facilitytype_id": facilitytypeId,
        "id": id,
        "facilitytype_name": facilitytypeNameValues.reverse[facilitytypeName],
        "alt_facilitytype_id": altFacilitytypeId,
        "name": name,
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
  int? id;

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
    this.newOrder,
    this.urlMax300,
    this.lastUpdateDate,
    this.urlSquare60,
    this.urlOriginal,
    this.photoId,
    this.url640X200,
    this.ratio,
  });

  int? newOrder;
  String? urlMax300;
  DateTime? lastUpdateDate;
  String? urlSquare60;
  String? urlOriginal;
  int? photoId;
  String? url640X200;
  double? ratio;

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        newOrder: json["new_order"],
        urlMax300: json["url_max300"],
        lastUpdateDate: json["last_update_date"] == null
            ? null
            : DateTime.parse(json["last_update_date"]),
        urlSquare60: json["url_square60"],
        urlOriginal: json["url_original"],
        photoId: json["photo_id"],
        url640X200: json["url_640x200"],
        ratio: json["ratio"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "new_order": newOrder,
        "url_max300": urlMax300,
        "last_update_date": lastUpdateDate?.toIso8601String(),
        "url_square60": urlSquare60,
        "url_original": urlOriginal,
        "photo_id": photoId,
        "url_640x200": url640X200,
        "ratio": ratio,
      };
}

class PrivateBathroomHighlight {
  PrivateBathroomHighlight({
    this.text,
    this.hasHighlight,
  });

  String? text;
  int? hasHighlight;

  factory PrivateBathroomHighlight.fromJson(Map<String, dynamic> json) =>
      PrivateBathroomHighlight(
        text: json["text"],
        hasHighlight: json["has_highlight"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "has_highlight": hasHighlight,
      };
}

class TopUfiBenefit {
  TopUfiBenefit({
    this.translatedName,
    this.icon,
  });

  String? translatedName;
  String? icon;

  factory TopUfiBenefit.fromJson(Map<String, dynamic> json) => TopUfiBenefit(
        translatedName: json["translated_name"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "translated_name": translatedName,
        "icon": icon,
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
