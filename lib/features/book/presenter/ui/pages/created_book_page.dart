import 'package:flutter/material.dart';
import 'package:neuro_dashboard/core/utils/template/default_page_template.dart';
import 'package:neuro_dashboard/core/utils/widgets/neuro_textfield.dart';
import 'package:neuro_dashboard/features/book/presenter/controllers/book_controller.dart';
import 'package:page_manager/export_manager.dart';

class CreatedBookPage extends StatefulWidget {
  static const route = '/created-book';
  const CreatedBookPage({super.key});

  @override
  State<CreatedBookPage> createState() => _CreatedBookPageState();
}

class _CreatedBookPageState
    extends ManagerPage<BookController, CreatedBookPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultPageTemplate(
      state: ct.state,
      error: ct.error,
      appBar: const Text('Adicionar Livro'),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // await ct.saveBook();
        },
        child: const Icon(Icons.save),
      ),
      pageDone: () => ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          NeuroTextField(
            hintText: 'Nome do livro',
          ),
          SizedBox(height: 20),
          NeuroTextField(
            hintText: 'Descrição do livro',
          ),
          SizedBox(height: 20),
          NeuroTextField(
            hintText: 'Autor do livro',
          ),
          SizedBox(height: 20),
          NeuroTextField(
            hintText: 'Ilustrador do livro',
          ),
          SizedBox(height: 20),
          NeuroTextField(
            hintText: 'Revisor do livro',
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
