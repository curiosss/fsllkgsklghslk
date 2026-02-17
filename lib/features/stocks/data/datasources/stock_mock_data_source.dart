import 'package:stock_investment_app/features/stocks/data/datasources/stock_remote_data_source.dart';
import 'package:stock_investment_app/features/stocks/data/models/price_model.dart';
import 'package:stock_investment_app/features/stocks/data/models/stock_model.dart';
import 'package:stock_investment_app/features/stocks/data/models/stocks_response.dart';

class StockMockDataSource implements StockRemoteDataSource {
  static const _allStocks = [
    StockModel(
      id: 1,
      companyName: 'NVIDIA Corp',
      tradingSymbol: 'NVDA',
      logo: 'https://ailatapi.kz/media/logos/NVDA.png',
      currency: 'USD',
      isCompliant: true,
      price: PriceModel(price: 140.15, changePercent: -1.29),
    ),
    StockModel(
      id: 2,
      companyName: 'Apple · 5 days ago',
      tradingSymbol: 'APPL',
      logo: 'https://ailatapi.kz/media/logos/AAPL.png',
      currency: 'USD',
      isCompliant: false,
      price: PriceModel(price: 224.23, changePercent: 0.00),
    ),
    StockModel(
      id: 3,
      companyName: 'Microsoft Corp',
      tradingSymbol: 'MSFT',
      logo: 'https://ailatapi.kz/media/logos/MSFT.png',
      currency: 'USD',
      isCompliant: false,
      price: PriceModel(price: 415.76, changePercent: 0.18),
    ),
    StockModel(
      id: 4,
      companyName: 'Alphabet Inc',
      tradingSymbol: 'GOOGL',
      logo: 'https://ailatapi.kz/media/logos/GOOGL.png',
      currency: 'USD',
      isCompliant: true,
      price: PriceModel(price: 175.30, changePercent: 1.63),
    ),
    StockModel(
      id: 5,
      companyName: 'Amazon',
      tradingSymbol: 'AMZN',
      logo: 'https://ailatapi.kz/media/logos/AMZN.png',
      currency: 'USD',
      isCompliant: true,
      price: PriceModel(price: 201.70, changePercent: 0.45),
    ),
    StockModel(
      id: 6,
      companyName: 'Meta Platforms Inc',
      tradingSymbol: 'META',
      logo: 'https://ailatapi.kz/media/logos/META.png',
      currency: 'USD',
      isCompliant: true,
      price: PriceModel(price: 554.40, changePercent: 0.06),
    ),
    StockModel(
      id: 7,
      companyName: 'Berkshire Hathaway',
      tradingSymbol: 'BRK.A',
      logo: 'https://ailatapi.kz/media/logos/BRK-A.png',
      currency: 'USD',
      isCompliant: false,
      price: PriceModel(price: 708.00, changePercent: 0.28),
    ),
    StockModel(
      id: 8,
      companyName: 'Eli Lilly and Co',
      tradingSymbol: 'LLY',
      logo: 'https://ailatapi.kz/media/logos/LLY.png',
      currency: 'USD',
      isCompliant: true,
      price: PriceModel(price: 727.20, changePercent: 1.12),
    ),
    StockModel(
      id: 9,
      companyName: 'Tesla Inc',
      tradingSymbol: 'TSLA',
      logo: 'https://ailatapi.kz/media/logos/TSLA.png',
      currency: 'USD',
      isCompliant: true,
      price: PriceModel(price: 248.50, changePercent: -2.35),
    ),
    StockModel(
      id: 10,
      companyName: 'JPMorgan Chase & Co',
      tradingSymbol: 'JPM',
      logo: 'https://ailatapi.kz/media/logos/JPM.png',
      currency: 'USD',
      isCompliant: false,
      price: PriceModel(price: 195.80, changePercent: 0.72),
    ),
    StockModel(
      id: 11,
      companyName: 'Visa Inc',
      tradingSymbol: 'V',
      logo: 'https://ailatapi.kz/media/logos/V.png',
      currency: 'USD',
      isCompliant: true,
      price: PriceModel(price: 282.30, changePercent: 0.34),
    ),
    StockModel(
      id: 12,
      companyName: 'Johnson & Johnson',
      tradingSymbol: 'JNJ',
      logo: 'https://ailatapi.kz/media/logos/JNJ.png',
      currency: 'USD',
      isCompliant: true,
      price: PriceModel(price: 156.45, changePercent: -0.15),
    ),
    StockModel(
      id: 13,
      companyName: 'Walmart Inc',
      tradingSymbol: 'WMT',
      logo: 'https://ailatapi.kz/media/logos/WMT.png',
      currency: 'USD',
      isCompliant: true,
      price: PriceModel(price: 171.20, changePercent: 0.89),
    ),
    StockModel(
      id: 14,
      companyName: 'Samsung Electronics',
      tradingSymbol: 'SSNLF',
      logo: 'https://ailatapi.kz/media/logos/SSNLF.png',
      currency: 'USD',
      isCompliant: false,
      price: PriceModel(price: 42.15, changePercent: -0.55),
    ),
    StockModel(
      id: 15,
      companyName: 'Netflix Inc',
      tradingSymbol: 'NFLX',
      logo: 'https://ailatapi.kz/media/logos/NFLX.png',
      currency: 'USD',
      isCompliant: true,
      price: PriceModel(price: 891.30, changePercent: 2.14),
    ),
    StockModel(
      id: 16,
      companyName: 'Adobe Inc',
      tradingSymbol: 'ADBE',
      logo: 'https://ailatapi.kz/media/logos/ADBE.png',
      currency: 'USD',
      isCompliant: true,
      price: PriceModel(price: 485.60, changePercent: -0.42),
    ),
    StockModel(
      id: 17,
      companyName: 'Salesforce Inc',
      tradingSymbol: 'CRM',
      logo: 'https://ailatapi.kz/media/logos/CRM.png',
      currency: 'USD',
      isCompliant: false,
      price: PriceModel(price: 267.80, changePercent: 1.05),
    ),
    StockModel(
      id: 18,
      companyName: 'AMD Inc',
      tradingSymbol: 'AMD',
      logo: 'https://ailatapi.kz/media/logos/AMD.png',
      currency: 'USD',
      isCompliant: true,
      price: PriceModel(price: 163.40, changePercent: -3.28),
    ),
    StockModel(
      id: 19,
      companyName: 'Intel Corporation',
      tradingSymbol: 'INTC',
      logo: 'https://ailatapi.kz/media/logos/INTC.png',
      currency: 'USD',
      isCompliant: false,
      price: PriceModel(price: 23.55, changePercent: 0.85),
    ),
    StockModel(
      id: 20,
      companyName: 'PayPal Holdings',
      tradingSymbol: 'PYPL',
      logo: 'https://ailatapi.kz/media/logos/PYPL.png',
      currency: 'USD',
      isCompliant: true,
      price: PriceModel(price: 72.40, changePercent: 1.38),
    ),
  ];

  @override
  Future<StocksResponse> getStocks({
    int page = 1,
    int perPage = 15,
    String? search,
    String? country,
    bool? compliance,
  }) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 800));

    var filtered = List<StockModel>.from(_allStocks);

    // Apply search filter
    if (search != null && search.isNotEmpty) {
      final q = search.toLowerCase();
      filtered = filtered
          .where((s) =>
              s.companyName.toLowerCase().contains(q) ||
              s.tradingSymbol.toLowerCase().contains(q))
          .toList();
    }

    // Apply compliance filter
    if (compliance != null) {
      filtered = filtered.where((s) => s.isCompliant == compliance).toList();
    }

    final totalCount = filtered.length;

    // Apply pagination
    final start = (page - 1) * perPage;
    final end = start + perPage;
    final paginated = start < filtered.length
        ? filtered.sublist(start, end.clamp(0, filtered.length))
        : <StockModel>[];

    return StocksResponse(
      data: paginated,
      meta: MetaModel(count: totalCount),
    );
  }
}
