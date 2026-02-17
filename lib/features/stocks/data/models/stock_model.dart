import 'package:stock_investment_app/features/stocks/domain/entities/stock.dart';

class StockModel extends Stock {
  const StockModel({
    required int id,
    required String companyName,
    required String tradingSymbol,
    required String logo,
    required String currency,
    required bool isCompliant,
    required double price,
    required double changePercent,
  }) : super(
         id: id,
         companyName: companyName,
         tradingSymbol: tradingSymbol,
         logo: logo,
         currency: currency,
         isCompliant: isCompliant,
         price: price,
         changePercent: changePercent,
       );

  factory StockModel.fromJson(Map<String, dynamic> json) {
    // The API response structure for price is nested:
    // "price": { "price": 2.78, "changePercent": -7.95 }
    final priceData = json['price'] as Map<String, dynamic>? ?? {};

    return StockModel(
      id: json['id'] as int? ?? 0,
      companyName: json['companyName'] as String? ?? 'Unknown',
      tradingSymbol: json['tradingSymbol'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      currency: json['currency'] as String? ?? 'USD',
      isCompliant: json['isCompliant'] as bool? ?? false,
      price: (priceData['price'] as num?)?.toDouble() ?? 0.0,
      changePercent: (priceData['changePercent'] as num?)?.toDouble() ?? 0.0,
    );
  }
}
