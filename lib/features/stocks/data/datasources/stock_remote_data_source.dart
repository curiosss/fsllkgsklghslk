import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:stock_investment_app/core/error/failures.dart';
import 'package:stock_investment_app/features/stocks/data/models/stock_model.dart';

abstract class StockRemoteDataSource {
  Future<List<StockModel>> getStocks({
    int page = 1,
    int perPage = 15,
    String? search,
    String? country,
    bool? compliance,
  });
}

class StockRemoteDataSourceImpl implements StockRemoteDataSource {
  final http.Client client;

  StockRemoteDataSourceImpl({required this.client});

  @override
  Future<List<StockModel>> getStocks({
    int page = 1,
    int perPage = 15,
    String? search,
    String? country,
    bool? compliance,
  }) async {
    final queryParams = {
      'pagination[page]': page.toString(),
      'pagination[perPage]': perPage.toString(),
    };

    if (search != null && search.isNotEmpty) {
      queryParams['filters[search]'] = search;
    }
    if (country != null && country.isNotEmpty) {
      queryParams['filters[country]'] = country;
    }
    if (compliance != null) {
      queryParams['filters[compliance]'] = compliance.toString();
    }

    final uri = Uri.https(
      'dev.codeunion.kz',
      '/ailat/api/stocks/list',
      queryParams,
    );

    try {
      final response = await client.get(
        uri,
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        final List<dynamic> data = jsonResponse['data'];
        return data.map((e) => StockModel.fromJson(e)).toList();
      } else {
        throw ServerFailure('Server Error: ${response.statusCode}');
      }
    } catch (e) {
      if (e is ServerFailure) rethrow;
      throw NetworkFailure(e.toString());
    }
  }
}
