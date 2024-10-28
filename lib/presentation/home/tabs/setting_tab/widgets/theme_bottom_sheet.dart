import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/providers/settings_providers.dart';

class ThemeBottomSheetWidget extends StatelessWidget {
  ThemeBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              themeProvider.changeAppTheme(ThemeMode.light);
            },
            child: themeProvider.isLightTheme()
                ? buildSelectedThemeWidget(
                    context, AppLocalizations.of(context)!.light)
                : buildUnSelectedThemeWidget(
                    context, AppLocalizations.of(context)!.light),
          ),
          const SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              themeProvider.changeAppTheme(ThemeMode.dark);
            },
            child: !(themeProvider.isLightTheme())
                ? buildSelectedThemeWidget(
                    context, AppLocalizations.of(context)!.dark)
                : buildUnSelectedThemeWidget(
                    context, AppLocalizations.of(context)!.dark),
          ),
        ],
      ),
    );
  }

  Widget buildSelectedThemeWidget(BuildContext context, String selectedTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectedTheme,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Icon(
          Icons.check,
          color: Colors.white,
          size: 28,
        ),
      ],
    );
  }

  Widget buildUnSelectedThemeWidget(
      BuildContext context, String unSelectedTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          unSelectedTheme,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
