import 'package:dio/dio.dart';
import 'package:stock_investment_app/core/error/failures.dart';
import 'package:stock_investment_app/features/stocks/data/datasources/stock_remote_data_source.dart';
import 'package:stock_investment_app/features/stocks/domain/entities/stock.dart';
import 'package:stock_investment_app/features/stocks/domain/repositories/stock_repository.dart';

class StockRepositoryImpl implements StockRepository {
  final StockRemoteDataSource remoteDataSource;

  StockRepositoryImpl({required this.remoteDataSource});

  @override
  Future<(Failure?, List<Stock>?, int)> getStocks({
    int page = 1,
    int perPage = 15,
    String? search,
    String? country,
    bool? compliance,
  }) async {
    try {
      final response = await remoteDataSource.getStocks(
        page: page,
        perPage: perPage,
        search: search,
        country: country,
        compliance: compliance,
      );

      final stocks = response.data
          .map(
            (model) => Stock(
              id: model.id,
              companyName: model.companyName,
              tradingSymbol: model.tradingSymbol,
              logo: model.logo,
              currency: model.currency,
              isCompliant: model.isCompliant,
              price: model.price.price,
              changePercent: model.price.changePercent,
            ),
          )
          .toList();

      return (null, stocks, response.meta.count);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.connectionTimeout) {
        return (const Failure.network('No internet connection'), null, 0);
      }
      return (
        Failure.server('Server Error: ${e.response?.statusCode ?? "unknown"}'),
        null,
        0
      );
    } catch (e) {
      return (Failure.server(e.toString()), null, 0);
    }
  }
}
