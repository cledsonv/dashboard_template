import 'package:flutter/material.dart';
import 'package:neuro_dashboard/core/utils/pages/error_default_page.dart';
import 'package:neuro_dashboard/core/utils/pages/logout_page.dart';
import 'package:neuro_dashboard/core/utils/widgets/neuro_drawer_menu.dart';
import 'package:neuro_dashboard/core/utils/widgets/neuro_text.dart';
import 'package:page_manager/export_manager.dart';

class ModuloPageTemplate extends StatelessWidget {
  final String route;
  final String title;
  final StateManager state;
  final List? listaItems;
  final Widget? child;
  final Object? error;
  final void Function()? onPressedRefresh;
  final Widget? floatingActionButton;

  const ModuloPageTemplate({
    super.key,
    required this.route,
    required this.state,
    required this.error,
    this.listaItems,
    this.child,
    this.onPressedRefresh,
    this.floatingActionButton,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final ratio = width * 0.005;
    return ManagerPageBuilder(
      state: state,
      pageInitial: () => const Center(
        child: CircularProgressIndicator(),
      ),
      pageError: (error) => const ErrorDefaultPage(),
      pageDisconnected: () => const ErrorDefaultPage(),
      pageLoading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      pageLoggedOut: () => const LogoutPage(),
      pageMaintenance: () => const ErrorDefaultPage(),
      error: error,
      drawer: width <= 1000 ? NeuroDrawerMenu(atual: route) : null,
      appBar: width <= 1000
          ? AppBar(
              title: NeuroText(
                text: title,
                typography: NeuroTypography.title,
              ),
            )
          : null,
      floatingActionButton: floatingActionButton,
      pageDone: () => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: width > 1000,
            child: NeuroDrawerMenu(atual: route),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16 * ratio,
                vertical: 8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 10),
                  if (width > 1000)
                    Text(
                      route.replaceAll('/', ''),
                      style: Theme.of(context).textTheme.titleLarge,
                    )
                  else
                    const SizedBox(),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  // ElevatedButton.icon(
                  //   style: TextButton.styleFrom(
                  //     padding: EdgeInsets.symmetric(
                  //       horizontal: 10 * 1.5,
                  //       vertical:
                  //           10 / (Responsive.isMobile(context) ? 2 : 1),
                  //     ),
                  //   ),
                  //   onPressed: onPressedRefresh,
                  //   icon: const Icon(Icons.replay),
                  //   label: const Text('Atualizar'),
                  // ),
                  //   ],
                  // ),
                  child ?? const SizedBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
