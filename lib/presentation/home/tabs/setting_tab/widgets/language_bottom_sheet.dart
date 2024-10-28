import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/settings_providers.dart';

class LanguageBottomSheetWidget extends StatelessWidget {
  const LanguageBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingProvider>(context);
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
                myProvider.changeAppLang('en');
              },
              child: myProvider.isEnglish()
                  ? buildSelectedLanguageWidget(context, 'English')
                  : buildUnSelectedLanguageWidget(context, 'English')),
          const SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                myProvider.changeAppLang('ar');
              },
              child: myProvider.isEnglish()
                  ? buildUnSelectedLanguageWidget(context, 'العربية')
                  : buildSelectedLanguageWidget(context, 'العربية')),
        ],
      ),
    );
  }

  Widget buildSelectedLanguageWidget(
      BuildContext context, String selectedLanguage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectedLanguage,
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

  Widget buildUnSelectedLanguageWidget(
      BuildContext context, String unSelectedLanguage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          unSelectedLanguage,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
