import 'package:flutter/material.dart';

class CountryFilterModal extends StatefulWidget {
  final String? selectedCountry;
  final ValueChanged<String?> onSelected;

  const CountryFilterModal({
    super.key,
    required this.selectedCountry,
    required this.onSelected,
  });

  @override
  State<CountryFilterModal> createState() => _CountryFilterModalState();
}

class _CountryFilterModalState extends State<CountryFilterModal> {
  final _searchController = TextEditingController();
  String _query = '';

  static const _countries = {
    'Local': [
      _CountryItem('Kazakhstan', '🇰🇿'),
    ],
    'North America': [
      _CountryItem('United States', '🇺🇸'),
      _CountryItem('Canada', '🇨🇦'),
      _CountryItem('Mexico', '🇲🇽'),
    ],
    'Europe': [
      _CountryItem('Germany', '🇩🇪'),
      _CountryItem('France', '🇫🇷'),
    ],
  };

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      maxChildSize: 0.9,
      minChildSize: 0.4,
      expand: false,
      builder: (context, scrollController) {
        return Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const Text(
                      'Countries',
                      style: TextStyle(
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),

              // Search
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: TextField(
                  controller: _searchController,
                  onChanged: (v) => setState(() => _query = v.toLowerCase()),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      fontFamily: 'SFProText',
                      color: Colors.grey[400],
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
                      vertical: 10,
                    ),
                  ),
                ),
              ),

              // "All" option
              ListTile(
                leading: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[200],
                  ),
                  child: const Icon(Icons.public, size: 18),
                ),
                title: const Text(
                  'All Countries',
                  style: TextStyle(
                    fontFamily: 'SFProText',
                    fontSize: 15,
                  ),
                ),
                trailing: widget.selectedCountry == null
                    ? const Icon(Icons.check_circle, color: Color(0xFF2ECC71))
                    : null,
                onTap: () => widget.onSelected(null),
              ),

              Divider(height: 1, color: Colors.grey[200]),

              // Country list
              Expanded(
                child: ListView(
                  controller: scrollController,
                  children: _countries.entries.map((section) {
                    final filteredCountries = section.value
                        .where((c) =>
                            _query.isEmpty ||
                            c.name.toLowerCase().contains(_query))
                        .toList();

                    if (filteredCountries.isEmpty) {
                      return const SizedBox.shrink();
                    }

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                          child: Text(
                            section.key,
                            style: TextStyle(
                              fontFamily: 'SFProText',
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[500],
                            ),
                          ),
                        ),
                        ...filteredCountries.map(
                          (country) => ListTile(
                            leading: Container(
                              width: 32,
                              height: 32,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                country.flag,
                                style: const TextStyle(fontSize: 24),
                              ),
                            ),
                            title: Text(
                              country.name,
                              style: const TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: 15,
                              ),
                            ),
                            trailing: widget.selectedCountry == country.name
                                ? const Icon(
                                    Icons.check_circle,
                                    color: Color(0xFF2ECC71),
                                  )
                                : null,
                            onTap: () => widget.onSelected(country.name),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _CountryItem {
  final String name;
  final String flag;

  const _CountryItem(this.name, this.flag);
}
