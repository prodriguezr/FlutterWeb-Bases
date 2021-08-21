import 'package:bases/locator.dart';
import 'package:bases/services/services.dart';
import 'package:bases/ui/shared/shared.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return (constraints.maxWidth > 520)
            ? _TableOrDesktopMenu()
            : _MobileMenu();
      },
    );
  }
}

class _TableOrDesktopMenu extends StatelessWidget {
  const _TableOrDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Counter with Stateful',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Counter with Provider',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Stateful 500',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful/500'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Provider 1250',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider?q=1250'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Reading segments',
            onPressed: () => locator<NavigationService>()
                .navigateTo('/dashboard/users/123/1'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Another Page',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/hghhrhrrh'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: 'Counter with Stateful',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Counter with Provider',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Another Page',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/abcd12345'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
