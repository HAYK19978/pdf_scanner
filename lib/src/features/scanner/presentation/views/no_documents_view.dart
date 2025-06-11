import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf_scanner/src/core/utils/image_paths.dart';

class NoDocumentsView extends StatelessWidget {
  const NoDocumentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            // Логотип
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Image.asset(
                ImagePaths.logo2Red,
                height: 40,
              ),
            ),
            const SizedBox(height: 24),
            // Поле поиска
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.all(16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Документы
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 24.w),
            //   child: Text(
            //     'Documents',
            //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            //   ),
            // ),
            // SizedBox(height: 16.h),
            // Карточка "Нет документов"
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Documents',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Image.asset(
                        'assets/images/no_docs.png',
                        height: 120,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'No documents found',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Tap the baton below to scan\nor convert to PDF',
                        style: TextStyle(color: Colors.black54),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 16),
        width: 80,
        height: 80,
        child: FloatingActionButton(
          backgroundColor: Colors.red,
          shape: const CircleBorder(),
          onPressed: () {},
          child: Image.asset(ImagePaths.btn, width: 82, height: 82),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
