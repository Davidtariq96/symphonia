class Model {
  late String id;
  late String symbol;
  late String name;
  late String image;
  late int currentPrice;
  // late int marketCap;
  // late int marketCapRank;
  // late int fullyDilutedValuation;
  // late int totalVolume;
  // late int high24h;
  // late int low24h;
  // late double priceChange24h;
  // late double priceChangePercentage24h;
  // int? marketCapChange24h;
  // double? marketCapChangePercentage24h;
  // int? circulatingSupply;
  // int? totalSupply;
  // int? maxSupply;
  // int? ath;
  // double? athChangePercentage;
  // String? athDate;
  // double? atl;
  // double? atlChangePercentage;
  // String? atlDate;
  // Null? roi;
  // String? lastUpdated;

  Model({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
    // required this.marketCap,
    // required this.marketCapRank,
    // required this.fullyDilutedValuation,
    // required this.totalVolume,
    // required this.high24h,
    // required this.low24h,
    // required this.priceChange24h,
    // required this.priceChangePercentage24h,
    // this.marketCapChange24h,
    // this.marketCapChangePercentage24h,
    // this.circulatingSupply,
    // this.totalSupply,
    // this.maxSupply,
    // this.ath,
    // this.athChangePercentage,
    // this.athDate,
    // this.atl,
    // this.atlChangePercentage,
    // this.atlDate,
    // this.roi,
    // this.lastUpdated
  });

  Model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    symbol = json['symbol'];
    name = json['name'];
    image = json['image'];
    currentPrice = json['current_price'];
    // marketCap = json['market_cap'];
    // marketCapRank = json['market_cap_rank'];
    // fullyDilutedValuation = json['fully_diluted_valuation'];
    // totalVolume = json['total_volume'];
    // high24h = json['high_24h'];
    // low24h = json['low_24h'];
    // priceChange24h = json['price_change_24h'];
    // priceChangePercentage24h = json['price_change_percentage_24h'];
    // marketCapChange24h = json['market_cap_change_24h'];
    // marketCapChangePercentage24h = json['market_cap_change_percentage_24h'];
    // circulatingSupply = json['circulating_supply'];
    // totalSupply = json['total_supply'];
    // maxSupply = json['max_supply'];
    // ath = json['ath'];
    // athChangePercentage = json['ath_change_percentage'];
    // athDate = json['ath_date'];
    // atl = json['atl'];
    // atlChangePercentage = json['atl_change_percentage'];
    // atlDate = json['atl_date'];
    // roi = json['roi'];
    // lastUpdated = json['last_updated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['symbol'] = symbol;
    data['name'] = name;
    data['image'] = image;
    data['current_price'] = currentPrice;
    // data['market_cap'] = marketCap;
    // data['market_cap_rank'] = marketCapRank;
    // data['fully_diluted_valuation'] = fullyDilutedValuation;
    // data['total_volume'] = totalVolume;
    // data['high_24h'] = high24h;
    // data['low_24h'] = low24h;
    // data['price_change_24h'] = priceChange24h;
    // data['price_change_percentage_24h'] = priceChangePercentage24h;
    // data['market_cap_change_24h'] = marketCapChange24h;
    // data['market_cap_change_percentage_24h'] = marketCapChangePercentage24h;
    // data['circulating_supply'] = circulatingSupply;
    // data['total_supply'] = totalSupply;
    // data['max_supply'] = maxSupply;
    // data['ath'] = ath;
    // data['ath_change_percentage'] = athChangePercentage;
    // data['ath_date'] = athDate;
    // data['atl'] = atl;
    // data['atl_change_percentage'] = atlChangePercentage;
    // data['atl_date'] = atlDate;
    // data['roi'] = roi;
    // data['last_updated'] = lastUpdated;
    return data;
  }
}
