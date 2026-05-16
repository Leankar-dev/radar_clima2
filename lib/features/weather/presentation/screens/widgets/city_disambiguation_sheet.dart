import 'package:flutter/material.dart';
import 'package:radar_clima2/core/constants/app_colors.dart';
import 'package:radar_clima2/core/constants/app_strings.dart';
import 'package:radar_clima2/features/weather/domain/models/geocoding_model.dart';

class CityDisambiguationSheet extends StatelessWidget {
  final List<GeocodingModel> cities;
  final void Function(GeocodingModel) onCitySelected;

  const CityDisambiguationSheet({
    super.key,
    required this.cities,
    required this.onCitySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 16),
      decoration: const BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        border: Border(
          top: BorderSide(color: AppColors.white20),
          left: BorderSide(color: AppColors.white20),
          right: BorderSide(color: AppColors.white20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _SheetTitle(cityName: cities.first.name),
          const SizedBox(height: 8),
          ...cities.map(
            (city) => _CityTile(
              city: city,
              onTap: () => onCitySelected(city),
            ),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                AppStrings.cancelButton,
                style: const TextStyle(color: AppColors.white60),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SheetTitle extends StatelessWidget {
  final String cityName;

  const _SheetTitle({required this.cityName});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.disambiguationTitle(cityName),
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        color: AppColors.white90,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _CityTile extends StatelessWidget {
  final GeocodingModel city;
  final VoidCallback onTap;

  const _CityTile({required this.city, required this.onTap});

  String _flag(String countryCode) => countryCode.toUpperCase().runes
      .map((r) => String.fromCharCode(r + 0x1F1A5))
      .join();

  String _subtitle() {
    final parts = [
      if (city.state != null && city.state!.isNotEmpty) city.state!,
      city.country,
    ];
    return parts.join(', ');
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Text(
        _flag(city.country),
        style: const TextStyle(fontSize: 28),
      ),
      title: Text(
        city.name,
        style: const TextStyle(
          color: AppColors.white90,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        _subtitle(),
        style: const TextStyle(color: AppColors.white60, fontSize: 13),
      ),
      onTap: onTap,
    );
  }
}
