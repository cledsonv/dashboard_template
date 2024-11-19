import 'package:flutter/material.dart';
import 'package:neuro_dashboard/core/utils/pages/error_default_page.dart';
import 'package:page_manager/entities/state_manager.dart';
import 'package:page_manager/manager_page_builder.dart';

class DefaultPageTemplate extends StatelessWidget {
  final Widget Function() pageDone;
  final StateManager state;
  final Object? error;
  final Widget Function()? pageInitial;
  final Widget appBar;
  final Widget? bottomNavigationBar;
  final Widget? drawer;
  final FloatingActionButton? floatingActionButton;
  const DefaultPageTemplate({
    super.key,
    required this.pageDone,
    required this.state,
    required this.error,
    this.pageInitial,
    required this.appBar,
    this.bottomNavigationBar,
    this.drawer,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return ManagerPageBuilder(
      state: state,
      pageDone: pageDone,
      error: error,
      drawer: drawer,
      floatingActionButton: floatingActionButton,
      padding: const EdgeInsets.all(17),
      pageInitial: pageInitial ??
          () => const Center(
                child: CircularProgressIndicator(),
              ),
      pageError: (error) => const ErrorDefaultPage(),
      pageDisconnected: () => const ErrorDefaultPage(),
      pageLoading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      pageLoggedOut: () => const ErrorDefaultPage(),
      pageMaintenance: () => const ErrorDefaultPage(),
      appBar: AppBar(
        title: appBar,
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
