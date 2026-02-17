import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:stock_investment_app/core/router/app_router.dart';
import 'package:stock_investment_app/features/stocks/data/datasources/stock_mock_data_source.dart';
import 'package:stock_investment_app/features/stocks/data/datasources/stock_remote_data_source.dart';
import 'package:stock_investment_app/features/stocks/data/repositories/stock_repository_impl.dart';
import 'package:stock_investment_app/features/stocks/domain/repositories/stock_repository.dart';
import 'package:stock_investment_app/features/stocks/domain/usecases/get_stocks.dart';
import 'package:stock_investment_app/features/stocks/presentation/bloc/stocks_bloc.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  // Core
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<AppRouter>(() => AppRouter());

  // Data sources — using mock while API is down
  // To switch back to real API, replace StockMockDataSource() with:
  //   StockRemoteDataSourceImpl(dio: getIt<Dio>())
  getIt.registerLazySingleton<StockRemoteDataSource>(
    () => StockMockDataSource(),
  );

  // Repositories
  getIt.registerLazySingleton<StockRepository>(
    () => StockRepositoryImpl(remoteDataSource: getIt<StockRemoteDataSource>()),
  );

  // Use cases
  getIt.registerLazySingleton(() => GetStocks(getIt<StockRepository>()));

  // BLoCs
  getIt.registerFactory(
    () => StocksBloc(getStocks: getIt<GetStocks>()),
  );
}
