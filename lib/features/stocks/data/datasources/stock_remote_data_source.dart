import 'package:dio/dio.dart';
import 'package:stock_investment_app/features/stocks/data/models/stocks_response.dart';

abstract class StockRemoteDataSource {
  Future<StocksResponse> getStocks({
    int page = 1,
    int perPage = 15,
    String? search,
    String? country,
    bool? compliance,
  });
}

class StockRemoteDataSourceImpl implements StockRemoteDataSource {
  final Dio dio;

  StockRemoteDataSourceImpl({required this.dio});

  @override
  Future<StocksResponse> getStocks({
    int page = 1,
    int perPage = 15,
    String? search,
    String? country,
    bool? compliance,
  }) async {
    final queryParams = <String, dynamic>{
      'pagination[page]': page,
      'pagination[perPage]': perPage,
    };

    if (search != null && search.isNotEmpty) {
      queryParams['filters[search]'] = search;
    }
    if (country != null && country.isNotEmpty) {
      queryParams['filters[country]'] = country;
    }
    if (compliance != null) {
      queryParams['filters[compliance]'] = compliance;
    }

    final response = await dio.get(
      'https://dev.codeunion.kz/ailat/api/stocks/list',
      queryParameters: queryParams,
    );

    return StocksResponse.fromJson(response.data as Map<String, dynamic>);
  }
}
