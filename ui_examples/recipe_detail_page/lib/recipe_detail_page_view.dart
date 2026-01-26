import 'package:flutter/material.dart';

class RecipeDetailPage extends StatelessWidget {
  const RecipeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yemek Tarifi'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.share))],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _RecipeHero(),
              const SizedBox(height: 16),
              _HeaderSection(),
              const SizedBox(height: 16),
              _TagSection(),
              const Divider(height: 32),
              _InfoCardsRow(),
              const Divider(),
              const _SectionTitle(title: 'Malzemeler'),
              const SizedBox(height: 8),
              const _StepsSection(),
              const SizedBox(height: 24),
              _NotesCard(),
              const SizedBox(height: 24),
              _BottomButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: () {},
            label: const Text("Kaydet"),
            icon: const Icon(Icons.bookmark_border),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: FilledButton.icon(
            onPressed: () {},
            label: const Text('Videoyu Başlat'),
            icon: const Icon(Icons.play_circle_outline),
          ),
        ),
      ],
    );
  }
}

class _NotesCard extends StatelessWidget {
  const _NotesCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.surfaceContainerHigh,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('İpucu', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(),
            Text(
              'Tavukları çok pişirmemeye dikkat edin, yüksek ateşte kısa sürede sotemeniz daha sulu kalmasını sağlar.',
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoCardsRow extends StatelessWidget {
  const _InfoCardsRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: _InfoCard(
            icon: Icons.local_fire_department_outlined,
            title: 'Kalori',
            value: '450 kcal',
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: _InfoCard(
            icon: Icons.fitness_center_outlined,
            title: 'Protein',
            value: '32 g',
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: _InfoCard(
            icon: Icons.grass_outlined,
            title: 'Lif',
            value: '8 g',
          ),
        ),
      ],
    );
  }
}

class _TagSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: const [
        Chip(label: Text('Sağlıklı'), avatar: Icon(Icons.eco, size: 16)),
        Chip(label: Text('Glutensiz')),
        Chip(label: Text('Akşam Yemeği')),
        Chip(label: Text('30 dakikada hazır')),
      ],
    );
  }
}

class _HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tavuklu Sebzeli Kase',
          style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.star, size: 18, color: Colors.amber),
            const SizedBox(width: 4),
            const Text('4.8'),
            const SizedBox(width: 8),
            const Text('·'),
            const SizedBox(width: 8),
            const Text('128 değerlendirme'),
            const Spacer(),
            const Icon(Icons.people_alt_outlined, size: 18),
            const SizedBox(width: 8),
            const Text('2 kişilik'),
          ],
        ),
      ],
    );
  }
}

class _RecipeHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              'https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 12,
            right: 12,
            child: CircleAvatar(
              backgroundColor: Colors.black54,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 12,
            bottom: 12,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Row(
                  children: [
                    Icon(Icons.schedule, size: 16, color: Colors.white),
                    SizedBox(width: 6),
                    Text(
                      '30 dk • 450 kcal',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _InfoCard({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 12),
            const SizedBox(height: 8),
            Text(title, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: 4),
            Text(
              value,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      title,
      style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}

class _StepsSection extends StatelessWidget {
  const _StepsSection();

  @override
  Widget build(BuildContext context) {
    const steps = [
      'Tavukları tuz ve karabiber ile marine edip 10 dakika dinlendirin.',
      'Geniş bir tavada zeytinyağını ısıtın, tavukları yüksek ateşte soteleyin.',
      'Sebzeleri ekleyip yumuşayana kadar kavurmaya devam edin.',
      'Haşlanmış kinoayı kaseye alın, üzerine tavuklu karışımı ekleyin.',
      'Üzerine ince doğranmış maydanoz serpip sıcak servis edin.',
    ];
    return Column(
      children: List.generate(
        steps.length,
        (index) => _StepItem(index: index + 1, text: steps[index]),
      ),
    );
  }
}

class _StepItem extends StatelessWidget {
  final int index;
  final String text;
  const _StepItem({required this.index, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 14,
        child: Text(index.toString(), style: const TextStyle(fontSize: 12)),
      ),
      title: Text(text),
      minLeadingWidth: 0,
      horizontalTitleGap: 12,
    );
  }
}
