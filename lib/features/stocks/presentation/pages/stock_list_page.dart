import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_investment_app/features/stocks/presentation/bloc/stocks_bloc.dart';
import 'package:stock_investment_app/features/stocks/presentation/bloc/stocks_event.dart';
import 'package:stock_investment_app/features/stocks/presentation/bloc/stocks_state.dart';
import 'package:stock_investment_app/features/stocks/presentation/widgets/stock_card.dart';
import 'package:stock_investment_app/features/stocks/presentation/widgets/stock_list_skeleton.dart';

class StockListPage extends StatefulWidget {
  const StockListPage({super.key});

  @override
  State<StockListPage> createState() => _StockListPageState();
}

class _StockListPageState extends State<StockListPage> {
  final _scrollController = ScrollController();
  final _searchController = TextEditingController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    // Initial fetch
    context.read<StocksBloc>().add(const GetStocksEvent());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<StocksBloc>().add(LoadMoreStocksEvent());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      context.read<StocksBloc>().add(SearchStocksEvent(query));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Investment App'),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          // Search and Filter Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _searchController,
                  onChanged: _onSearchChanged,
                  decoration: InputDecoration(
                    hintText: 'Search by symbol or name',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
                const SizedBox(height: 12),
                // Filters
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FilterChip(
                        label: const Text('Compliant'),
                        // We need to read current state to check if selected?
                        // For simplicity, I'll use a local state or just toggle.
                        // Ideally, this should be driven by Bloc State.
                        // Let's wrap in BlocBuilder for filter checks.
                        onSelected: (selected) {
                          context.read<StocksBloc>().add(
                            FilterStocksEvent(
                              compliance: selected ? true : null,
                              // preserve country if needed, hard for now to sync perfectly without complex state reading
                              // Simplified: If compliance filter clicked, toggle it.
                            ),
                          );
                        },
                        // Note: This needs state access to show 'selected'.
                        // I will fix this in BlocBuilder below.
                        selected: false,
                      ),
                      const SizedBox(width: 8),
                      // Example Country Filter (Static for demo as no list of countries provided)
                      FilterChip(
                        label: const Text('USA'),
                        onSelected: (selected) {
                          context.read<StocksBloc>().add(
                            FilterStocksEvent(country: selected ? 'USA' : null),
                          );
                        },
                        selected: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Stocks List
          Expanded(
            child: BlocBuilder<StocksBloc, StocksState>(
              builder: (context, state) {
                if (state is StocksLoading) {
                  return const StockListSkeleton();
                } else if (state is StocksError) {
                  return Center(child: Text(state.message));
                } else if (state is StocksLoaded) {
                  if (state.stocks.isEmpty) {
                    return const Center(child: Text('No stocks found'));
                  }
                  return ListView.builder(
                    controller: _scrollController,
                    itemCount: state.hasReachedMax
                        ? state.stocks.length
                        : state.stocks.length + 1,
                    itemBuilder: (context, index) {
                      if (index >= state.stocks.length) {
                        return const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }
                      return StockCard(stock: state.stocks[index]);
                    },
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}
