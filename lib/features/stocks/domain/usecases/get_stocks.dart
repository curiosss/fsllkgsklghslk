import 'package:stock_investment_app/core/error/failures.dart';
import 'package:stock_investment_app/core/usecases/usecase.dart';
import 'package:stock_investment_app/features/stocks/domain/entities/stock.dart';
import 'package:stock_investment_app/features/stocks/domain/repositories/stock_repository.dart';

class GetStocksParams {
  final int page;
  final int perPage;
  final String? search;
  final String? country;
  final bool? compliance;

  GetStocksParams({
    this.page = 1,
    this.perPage = 15,
    this.search,
    this.country,
    this.compliance,
  });
}

class GetStocks extends UseCase<(Failure?, List<Stock>?), GetStocksParams> {
  final StockRepository repository;

  GetStocks(this.repository);

  @override
  Future<(Failure?, List<Stock>?)> call(GetStocksParams params) async {
    return await repository.getStocks(
      page: params.page,
      perPage: params.perPage,
      search: params.search,
      country: params.country,
      compliance: params.compliance,
    );
  }
}
