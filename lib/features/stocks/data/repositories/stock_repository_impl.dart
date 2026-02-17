import 'package:stock_investment_app/core/error/failures.dart';
import 'package:stock_investment_app/features/stocks/data/datasources/stock_remote_data_source.dart';
import 'package:stock_investment_app/features/stocks/domain/entities/stock.dart';
import 'package:stock_investment_app/features/stocks/domain/repositories/stock_repository.dart';

class StockRepositoryImpl implements StockRepository {
  final StockRemoteDataSource remoteDataSource;

  StockRepositoryImpl({required this.remoteDataSource});

  @override
  Future<(Failure?, List<Stock>?)> getStocks({
    int page = 1,
    int perPage = 15,
    String? search,
    String? country,
    bool? compliance,
  }) async {
    try {
      final stockModels = await remoteDataSource.getStocks(
        page: page,
        perPage: perPage,
        search: search,
        country: country,
        compliance: compliance,
      );
      // StockModel is a subclass of Stock, so this is valid.
      return (null, stockModels);
    } on Failure catch (e) {
      return (e, null);
    } catch (e) {
      return (ServerFailure(e.toString()), null);
    }
  }
}
