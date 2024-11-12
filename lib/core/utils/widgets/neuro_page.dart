import 'package:flutter/material.dart';

enum PageState { loading, done, error }

class NeuroPage extends StatelessWidget {
  final Widget Function(BuildContext) done;
  final PageState state;
  final Widget Function(BuildContext)? loading;
  final Widget Function(BuildContext)? error;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final List<Widget>? persistentFooterButtons;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  const NeuroPage({
    super.key,
    required this.state,
    required this.done,
    this.error,
    this.loading,
    this.appBar,
    this.floatingActionButton,
    this.persistentFooterButtons,
    this.backgroundColor,
    this.bottomNavigationBar,
    this.floatingActionButtonLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      floatingActionButton: floatingActionButton,
      persistentFooterButtons: persistentFooterButtons,
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: backgroundColor,
      floatingActionButtonLocation: floatingActionButtonLocation,
      body: Builder(
        builder: (context) {
          return switch (state) {
            PageState.loading => loading != null
                ? loading!(context)
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
            PageState.done => done(context),
            PageState.error => error != null
                ? error!(context)
                : const Text('Error') // TODO: Criar tela padrão de erro
          };
        },
      ),
    );
  }
}
