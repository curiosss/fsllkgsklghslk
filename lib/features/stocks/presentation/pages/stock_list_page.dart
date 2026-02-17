import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_investment_app/core/di/injection.dart';
import 'package:stock_investment_app/features/stocks/presentation/bloc/stocks_bloc.dart';
import 'package:stock_investment_app/features/stocks/presentation/bloc/stocks_event.dart';
import 'package:stock_investment_app/features/stocks/presentation/bloc/stocks_state.dart';
import 'package:stock_investment_app/features/stocks/presentation/widgets/stock_card.dart';
import 'package:stock_investment_app/features/stocks/presentation/widgets/stock_list_skeleton.dart';
import 'package:stock_investment_app/features/stocks/presentation/widgets/country_filter_modal.dart';

@RoutePage()
class StockListPage extends StatefulWidget {
  const StockListPage({super.key});

  @override
  State<StockListPage> createState() => _StockListPageState();
}

class _StockListPageState extends State<StockListPage> {
  final _scrollController = ScrollController();
  final _searchController = TextEditingController();
  Timer? _debounce;

  String? _selectedCountry;
  bool? _selectedCompliance;

  late final StocksBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = getIt<StocksBloc>();
    _scrollController.addListener(_onScroll);
    _bloc.add(const GetStocksEvent());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    _debounce?.cancel();
    _bloc.close();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      _bloc.add(const LoadMoreStocksEvent());
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
      _bloc.add(SearchStocksEvent(query));
    });
  }

  void _showCountryModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => CountryFilterModal(
        selectedCountry: _selectedCountry,
        onSelected: (country) {
          setState(() => _selectedCountry = country);
          _bloc.add(FilterStocksEvent(
            country: country,
            compliance: _selectedCompliance,
          ));
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showComplianceMenu() {
    final overlay = Overlay.of(context).context.findRenderObject() as RenderBox;

    showMenu<bool?>(
      context: context,
      position: RelativeRect.fromRect(
        Rect.fromLTWH(100, 180, 200, 48),
        Offset.zero & overlay.size,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      items: [
        PopupMenuItem<bool?>(
          value: true,
          child: Row(
            children: [
              if (_selectedCompliance == true)
                const Icon(Icons.check, size: 18),
              if (_selectedCompliance == true) const SizedBox(width: 8),
              const Text('Compliant'),
              const Spacer(),
              const Icon(Icons.verified, color: Colors.green, size: 18),
            ],
          ),
        ),
        PopupMenuItem<bool?>(
          value: false,
          child: Row(
            children: [
              if (_selectedCompliance == false)
                const Icon(Icons.check, size: 18),
              if (_selectedCompliance == false) const SizedBox(width: 8),
              const Text('Non-compliant'),
              const Spacer(),
              const Icon(Icons.cancel, color: Colors.red, size: 18),
            ],
          ),
        ),
        PopupMenuItem<bool?>(
          value: null,
          child: const Text('All'),
        ),
      ],
    ).then((value) {
      if (value == null && _selectedCompliance == null) return;
      setState(() => _selectedCompliance = value);
      _bloc.add(FilterStocksEvent(
        compliance: value,
        country: _selectedCountry,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Stock Investments',
            style: TextStyle(
              fontFamily: 'SFProText',
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          surfaceTintColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        body: Column(
          children: [
            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                controller: _searchController,
                onChanged: _onSearchChanged,
                style: const TextStyle(
                  fontFamily: 'SFProText',
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontFamily: 'SFProText',
                    color: Colors.grey[400],
                    fontSize: 16,
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),
            ),

            // Filter chips
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  // Country filter chip
                  GestureDetector(
                    onTap: _showCountryModal,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: _selectedCountry != null
                            ? const Color(0xFF2ECC71)
                            : Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            _selectedCountry ?? 'Country',
                            style: TextStyle(
                              fontFamily: 'SFProText',
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: _selectedCountry != null
                                  ? Colors.white
                                  : Colors.black87,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 18,
                            color: _selectedCountry != null
                                ? Colors.white
                                : Colors.black54,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),

                  // Compliance filter chip
                  GestureDetector(
                    onTap: _showComplianceMenu,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: _selectedCompliance != null
                            ? const Color(0xFF2ECC71)
                            : Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            _selectedCompliance == null
                                ? 'Compliance'
                                : _selectedCompliance == true
                                    ? 'Compliant'
                                    : 'Non-compliant',
                            style: TextStyle(
                              fontFamily: 'SFProText',
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: _selectedCompliance != null
                                  ? Colors.white
                                  : Colors.black87,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 18,
                            color: _selectedCompliance != null
                                ? Colors.white
                                : Colors.black54,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Stock count
            BlocBuilder<StocksBloc, StocksState>(
              builder: (context, state) {
                if (state is StocksLoaded) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${state.totalCount} stocks found',
                        style: TextStyle(
                          fontFamily: 'SFProText',
                          fontSize: 13,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  );
                }
                return const SizedBox(height: 12);
              },
            ),

            // Stocks list
            Expanded(
              child: BlocBuilder<StocksBloc, StocksState>(
                builder: (context, state) {
                  if (state is StocksLoading) {
                    return const StockListSkeleton();
                  } else if (state is StocksError) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.wifi_off_rounded,
                              size: 48,
                              color: Colors.grey[400],
                            ),
                            const SizedBox(height: 16),
                            Text(
                              state.message,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: 15,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 16),
                            TextButton(
                              onPressed: () => _bloc.add(
                                GetStocksEvent(
                                  search: _searchController.text.isEmpty
                                      ? null
                                      : _searchController.text,
                                  country: _selectedCountry,
                                  compliance: _selectedCompliance,
                                ),
                              ),
                              child: const Text('Retry'),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else if (state is StocksLoaded) {
                    if (state.stocks.isEmpty) {
                      return Center(
                        child: Text(
                          'No stocks found',
                          style: TextStyle(
                            fontFamily: 'SFProText',
                            fontSize: 15,
                            color: Colors.grey[500],
                          ),
                        ),
                      );
                    }
                    return ListView.separated(
                      controller: _scrollController,
                      padding: EdgeInsets.zero,
                      itemCount: state.hasReachedMax
                          ? state.stocks.length
                          : state.stocks.length + 1,
                      separatorBuilder: (_, __) => Divider(
                        height: 1,
                        indent: 76,
                        color: Colors.grey[200],
                      ),
                      itemBuilder: (context, index) {
                        if (index >= state.stocks.length) {
                          return const Padding(
                            padding: EdgeInsets.all(16),
                            child: Center(
                              child: SizedBox(
                                width: 24,
                                height: 24,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
