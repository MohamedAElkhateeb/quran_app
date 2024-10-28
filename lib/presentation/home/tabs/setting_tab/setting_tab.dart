import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/presentation/home/tabs/setting_tab/widgets/language_bottom_sheet.dart';
import 'package:quran_app/presentation/home/tabs/setting_tab/widgets/theme_bottom_sheet.dart';
import 'package:quran_app/providers/settings_providers.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
            ),
            child: Text(
              AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: Theme.of(context).dividerColor,
                  width: 2,
                ),
              ),
              child: Text(
                myProvider.isLightTheme()
                    ? AppLocalizations.of(context)!.light
                    : AppLocalizations.of(context)!.dark,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
            ),
            child: Text(
              AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: Theme.of(context).dividerColor,
                  width: 2,
                ),
              ),
              child: Text(
                myProvider.isEnglish()?
                'English':'العربية',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return ThemeBottomSheetWidget();
      },
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return LanguageBottomSheetWidget();
      },
    );
  }
}