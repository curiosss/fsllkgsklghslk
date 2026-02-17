import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:stock_investment_app/features/stocks/data/datasources/stock_remote_data_source.dart';
import 'package:stock_investment_app/features/stocks/data/repositories/stock_repository_impl.dart';
import 'package:stock_investment_app/features/stocks/domain/usecases/get_stocks.dart';
import 'package:stock_investment_app/features/stocks/presentation/bloc/stocks_bloc.dart';
import 'package:stock_investment_app/features/stocks/presentation/pages/stock_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Dependency Injection
    final http.Client httpClient = http.Client();
    final remoteDataSource = StockRemoteDataSourceImpl(client: httpClient);
    final repository = StockRepositoryImpl(remoteDataSource: remoteDataSource);
    final getStocks = GetStocks(repository);

    return MaterialApp(
      title: 'Investment App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: BlocProvider(
        create: (context) => StocksBloc(getStocks: getStocks),
        child: const StockListPage(),
      ),
    );
  }
}
