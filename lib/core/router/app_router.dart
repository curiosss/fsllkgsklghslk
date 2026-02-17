import 'package:auto_route/auto_route.dart';
import 'package:stock_investment_app/core/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: StockListRoute.page,
          initial: true,
        ),
      ];
}
