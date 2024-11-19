import 'package:flutter/material.dart';
import 'package:neuro_dashboard/core/services/api/api_error/api_error.dart';
import 'package:page_manager/handles/manager_handle_dialog_error.dart';

class HandleDialogError implements ManagerHandleDialogError {
  @override
  Widget call(Object? e, BuildContext context) {
    return AlertDialog(
      title: const Text('Erro'),
      content: Text(content(e)),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          child: const Text('OK'),
        ),
      ],
    );
  }

  String content(e) {
    if (e is ApiError) {
      return e.message;
    }
    return 'Ocorreu algum erro';
  }
}
