import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_investment_app/features/stocks/domain/usecases/get_stocks.dart';
import 'package:stock_investment_app/features/stocks/presentation/bloc/stocks_event.dart';
import 'package:stock_investment_app/features/stocks/presentation/bloc/stocks_state.dart';

class StocksBloc extends Bloc<StocksEvent, StocksState> {
  final GetStocks getStocks;

  StocksBloc({required this.getStocks}) : super(const StocksInitial()) {
    on<GetStocksEvent>(_onGetStocks);
    on<LoadMoreStocksEvent>(_onLoadMoreStocks);
    on<SearchStocksEvent>(_onSearchStocks);
    on<FilterStocksEvent>(_onFilterStocks);
  }

  Future<void> _onGetStocks(
    GetStocksEvent event,
    Emitter<StocksState> emit,
  ) async {
    emit(const StocksLoading());
    final (failure, stocks, totalCount) = await getStocks(
      GetStocksParams(
        page: 1,
        search: event.search,
        country: event.country,
        compliance: event.compliance,
      ),
    );

    if (failure != null) {
      emit(StocksError(failure.message));
    } else if (stocks != null) {
      emit(
        StocksLoaded(
          stocks: stocks,
          hasReachedMax: stocks.length < 15,
          page: 1,
          totalCount: totalCount,
          search: event.search,
          country: event.country,
          compliance: event.compliance,
        ),
      );
    }
  }

  Future<void> _onLoadMoreStocks(
    LoadMoreStocksEvent event,
    Emitter<StocksState> emit,
  ) async {
    final currentState = state;
    if (currentState is! StocksLoaded || currentState.hasReachedMax) return;

    final nextPage = currentState.page + 1;
    final (failure, newStocks, _) = await getStocks(
      GetStocksParams(
        page: nextPage,
        search: currentState.search,
        country: currentState.country,
        compliance: currentState.compliance,
      ),
    );

    if (failure != null) {
      // Keep current state on pagination error
    } else if (newStocks != null) {
      if (newStocks.isEmpty) {
        emit(currentState.copyWith(hasReachedMax: true));
      } else {
        emit(
          currentState.copyWith(
            stocks: [...currentState.stocks, ...newStocks],
            hasReachedMax: newStocks.length < 15,
            page: nextPage,
          ),
        );
      }
    }
  }

  Future<void> _onSearchStocks(
    SearchStocksEvent event,
    Emitter<StocksState> emit,
  ) async {
    String? currentCountry;
    bool? currentCompliance;
    if (state is StocksLoaded) {
      final loaded = state as StocksLoaded;
      currentCountry = loaded.country;
      currentCompliance = loaded.compliance;
    }
    add(GetStocksEvent(
      search: event.query.isEmpty ? null : event.query,
      country: currentCountry,
      compliance: currentCompliance,
    ));
  }

  Future<void> _onFilterStocks(
    FilterStocksEvent event,
    Emitter<StocksState> emit,
  ) async {
    String? currentSearch;
    if (state is StocksLoaded) {
      currentSearch = (state as StocksLoaded).search;
    }

    add(
      GetStocksEvent(
        search: currentSearch,
        compliance: event.compliance,
        country: event.country,
      ),
    );
  }
}
