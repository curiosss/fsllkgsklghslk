import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stock_investment_app/features/stocks/domain/entities/stock.dart';

class StockCard extends StatelessWidget {
  final Stock stock;

  const StockCard({super.key, required this.stock});

  @override
  Widget build(BuildContext context) {
    final isPositive = stock.changePercent >= 0;
    final changeColor =
        isPositive ? const Color(0xFF2ECC71) : const Color(0xFFE74C3C);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          // Company Logo
          ClipOval(
            child: CachedNetworkImage(
              imageUrl: stock.logo,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
              placeholder: (_, __) => Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
              ),
              errorWidget: (_, __, ___) => Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.business, size: 20, color: Colors.grey[400]),
              ),
            ),
          ),
          const SizedBox(width: 12),

          // Symbol + Company name
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      stock.tradingSymbol,
                      style: const TextStyle(
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 6),
                    // Compliance badge
                    Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: stock.isCompliant
                            ? const Color(0xFF2ECC71)
                            : const Color(0xFFE74C3C),
                      ),
                      child: Icon(
                        stock.isCompliant ? Icons.check : Icons.close,
                        size: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  stock.companyName,
                  style: TextStyle(
                    fontFamily: 'SFProText',
                    fontSize: 13,
                    color: Colors.grey[500],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),

          // Price + Change %
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${stock.price.toStringAsFixed(2)} ${stock.currency}',
                style: const TextStyle(
                  fontFamily: 'SFProText',
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                '${isPositive ? "+" : ""}${stock.changePercent.toStringAsFixed(2)}%',
                style: TextStyle(
                  fontFamily: 'SFProText',
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: changeColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
