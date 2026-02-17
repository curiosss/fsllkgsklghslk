import 'package:stock_investment_app/features/stocks/domain/entities/stock.dart';
import 'package:stock_investment_app/core/error/failures.dart';
// Since I'm not using Dartz, I will use a custom Record or class return,
// OR I'll just throw exceptions and catch them in Bloc.
// However, Clean Architecture usually prefers checking exceptions in Repo and returning Either.
// Since I decided to avoid adding Dartz if not present, and it's not present...
// Actually, I can use a simple generic class KeyValue or just (Failure?, List<Stock>?).
// Dart 3 records are great for this: Future<(Failure?, List<Stock>?)>
// Let's use Dart 3 records! environment sdk is >=3.0.0.

abstract class StockRepository {
  Future<(Failure?, List<Stock>?)> getStocks({
    int page = 1,
    int perPage = 15,
    String? search,
    String? country,
    bool? compliance,
  });
}
