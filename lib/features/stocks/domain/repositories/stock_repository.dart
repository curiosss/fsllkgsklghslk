import 'package:stock_investment_app/core/error/failures.dart';
import 'package:stock_investment_app/features/stocks/domain/entities/stock.dart';

abstract class StockRepository {
  Future<(Failure?, List<Stock>?, int)> getStocks({
    int page = 1,
    int perPage = 15,
    String? search,
    String? country,
    bool? compliance,
  });
}
