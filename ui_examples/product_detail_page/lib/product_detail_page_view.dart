import 'package:flutter/material.dart';

class ProductDetailPageView extends StatelessWidget {
  const ProductDetailPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ürün Detayı"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
        ],
      ),
      bottomNavigationBar: const _BottomBar(),
      body: SafeArea(
        child: ListView(
          children: [
            _ImageCarousel(),
            _RatingSection(textTheme: textTheme),
            const SizedBox(height: 16),
            _PriceRow(textTheme: textTheme),
            const SizedBox(height: 24),
            const _ColorSection(),
            const SizedBox(height: 24),
            const _SizeSection(),
            const Divider(height: 32),
            const _DescriptionSection(),
            const Divider(height: 32),
            const _DeliveryInfoSection(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class _DeliveryInfoSection extends StatelessWidget {
  const _DeliveryInfoSection();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: const Icon(Icons.local_shipping_outlined),
        title: const Text('Hızlı Teslimat'),
        subtitle: const Text('Tahmini teslimat: 1-3 iş günü'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      ),
    );
  }
}

class _DescriptionSection extends StatelessWidget {
  const _DescriptionSection();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Bu ürün kaliteli deri malzemeden üretilmiştir. Günlük kullanım için uygundur. '
      'Kaymaz tabanı ve nefes alabilen yapısı ile spor aktivitelerinde de tercih edilebilir.',
      textAlign: TextAlign.justify,
    );
  }
}

class _SizeSection extends StatelessWidget {
  const _SizeSection();

  @override
  Widget build(BuildContext context) {
    final sizes = ['40', '41', '42', '43', '44'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Numara', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: sizes
              .map(
                (size) => Chip(
                  label: Text(size),
                  backgroundColor: Colors.grey.shade200,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class _ColorSection extends StatelessWidget {
  const _ColorSection();

  @override
  Widget build(BuildContext context) {
    final colors = [Colors.black, Colors.white, Colors.blue, Colors.red];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Renk', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: colors.map((color) {
            return CircleAvatar(radius: 14, backgroundColor: color);
          }).toList(),
        ),
      ],
    );
  }
}

class _PriceRow extends StatelessWidget {
  const _PriceRow({super.key, required this.textTheme});

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '₺1.299',
          style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 8),
        Text(
          '₺1.499',
          style: textTheme.bodyMedium?.copyWith(
            decoration: TextDecoration.lineThrough,
            color: Colors.grey,
          ),
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.red.shade50,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            '%13 indirim',
            style: TextStyle(
              color: Colors.red.shade700,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class _RatingSection extends StatelessWidget {
  const _RatingSection({required this.textTheme});

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Erkek Günlük Spor Ayakkabı",
            style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Row(
            children: const [
              Icon(Icons.star, size: 18, color: Colors.amber),
              SizedBox(width: 4),
              Text('4.6'),
              SizedBox(width: 6),
              Text('(1.243 değerlendirme)'),
            ],
          ),
        ],
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('Sepete Ekle'),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: FilledButton(
              onPressed: () {},
              child: const Text("Hemen Al"),
            ),
          ),
        ],
      ),
    );
  }
}

class _ImageCarousel extends StatelessWidget {
  final images = const [
    'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg',
    'https://images.pexels.com/photos/1407357/pexels-photo-1407357.jpeg',
    'https://images.pexels.com/photos/2529150/pexels-photo-2529150.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PageView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Image.network(images[index], fit: BoxFit.cover);
        },
      ),
    );
  }
}
