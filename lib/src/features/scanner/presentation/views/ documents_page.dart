import 'package:flutter/material.dart';

class DocumentsView extends StatelessWidget {
  const DocumentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('PixelScan', style: TextStyle(color: Colors.black)),
        centerTitle: false,
      ),
      body: const DocumentListView(),
    );
  }
}

class DocumentListView extends StatelessWidget {
  const DocumentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchBar(),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Documents',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Icon(Icons.swap_vert, color: Colors.red),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) => DocumentTile(
                title: 'Document 1',
                date: '2025-02-12',
                pageCount: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          border: InputBorder.none,
          icon: Icon(Icons.search),
        ),
      ),
    );
  }
}

class DocumentTile extends StatelessWidget {
  final String title;
  final String date;
  final int pageCount;

  const DocumentTile(
      {super.key,
      required this.title,
      required this.date,
      required this.pageCount});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading:
            Image.asset('assets/images/doc_thumb.png', width: 40, height: 50),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('$pageCount | $date'),
        trailing: IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () => _showActions(context),
        ),
      ),
    );
  }

  void _showActions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => const DocumentActionSheet(),
    );
  }
}

class DocumentActionSheet extends StatelessWidget {
  const DocumentActionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildAction(context, 'Rename', Icons.edit, Colors.blue, () {}),
          _buildAction(context, 'Print', Icons.print, Colors.blue, () {}),
          _buildAction(context, 'Share', Icons.share, Colors.blue, () {}),
          _buildAction(context, 'Delete', Icons.delete, Colors.red, () {}),
          const Divider(),
          ListTile(
            title: const Center(
                child: Text('Cancel', style: TextStyle(color: Colors.black))),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }

  Widget _buildAction(BuildContext context, String title, IconData icon,
      Color color, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title, style: TextStyle(color: color)),
      onTap: () {
        Navigator.pop(context);
        onTap();
      },
    );
  }
}
