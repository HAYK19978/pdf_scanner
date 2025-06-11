// ignore: file_names
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:pdf_scanner/src/core/utils/image_paths.dart';

class DocumentsPage extends StatelessWidget {
  const DocumentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> documents = <Map<String, String>>[
      <String, String>{'title': 'Document 1', 'date': '2025-06-09'},
      <String, String>{'title': 'Document 2', 'date': '2025-06-08'},
      <String, String>{
        'title': 'Name 20.01.2024. From PixelScan',
        'date': '2025-06-01'
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Image.asset(
                ImagePaths.logo2Red,
                height: 40,
              ),
            ),
            const SizedBox(height: 16),
            // Поиск
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'search'.tr(),
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Заголовок
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('documents'.tr(),
                    style: Theme.of(context).textTheme.titleMedium),
              ),
            ),
            const SizedBox(height: 8),
            // Список документов
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: documents.length,
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (BuildContext context, int index) {
                  final Map<String, String> doc = documents[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      title: Text(doc['title']!),
                      subtitle: Text(doc['date']!),
                      trailing: PopupMenuButton<String>(
                        onSelected: (String value) {
                          // обработка действий
                        },
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuEntry<String>>[
                          const PopupMenuItem(
                              value: 'rename', child: Text('Rename')),
                          const PopupMenuItem(
                              value: 'print', child: Text('Print')),
                          const PopupMenuItem(
                              value: 'share', child: Text('Share')),
                          const PopupMenuItem(
                              value: 'delete', child: Text('Delete')),
                        ],
                      ),
                      onTap: () {
                        // открыть просмотр документа
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {}, // сканировать новый документ
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
