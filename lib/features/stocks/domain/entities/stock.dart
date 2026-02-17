import 'package:equatable/equatable.dart';

class Stock extends Equatable {
  final int id;
  final String companyName;
  final String tradingSymbol;
  final String logo;
  final String currency;
  final bool isCompliant;
  final double price;
  final double changePercent;

  const Stock({
    required this.id,
    required this.companyName,
    required this.tradingSymbol,
    required this.logo,
    required this.currency,
    required this.isCompliant,
    required this.price,
    required this.changePercent,
  });

  @override
  List<Object?> get props => [
    id,
    companyName,
    tradingSymbol,
    logo,
    currency,
    isCompliant,
    price,
    changePercent,
  ];
}
