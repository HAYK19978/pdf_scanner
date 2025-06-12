import 'package:flutter/material.dart';

class CurrentDocumentView extends StatelessWidget {
  const CurrentDocumentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            DocumentPreviewAppBar(),
            Expanded(child: DocumentPageView()),
            DocumentThumbnailBar(),
            DocumentActionBar(),
          ],
        ),
      ),
    );
  }
}

class DocumentPreviewAppBar extends StatelessWidget {
  const DocumentPreviewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(Icons.arrow_back, color: Colors.black),
              SizedBox(width: 8),
              Text(
                'Document 1',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 4),
              Text(
                '| 1 of 4',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.share, color: Colors.red),
            label: const Text('Share', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}

class DocumentPageView extends StatelessWidget {
  const DocumentPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Image.asset(
        'assets/images/sample_doc.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

class DocumentThumbnailBar extends StatelessWidget {
  const DocumentThumbnailBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: SizedBox(
        height: 80,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              border: Border.all(
                  color: index == 0 ? Colors.red : Colors.grey.shade300,
                  width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              'assets/images/sample_doc_thumb.png',
              width: 60,
            ),
          ),
        ),
      ),
    );
  }
}

class DocumentActionBar extends StatelessWidget {
  const DocumentActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      decoration: const BoxDecoration(
        color: Color(0xFFF9F9F9),
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              Icon(Icons.edit, color: Colors.black),
              SizedBox(height: 4),
              Text('Edit')
            ],
          ),
          Column(
            children: const [
              Icon(Icons.add_to_photos, color: Colors.black),
              SizedBox(height: 4),
              Text('Add')
            ],
          ),
        ],
      ),
    );
  }
}
