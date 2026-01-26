import 'package:flutter/material.dart';

class HotelDetailPage extends StatelessWidget {
  const HotelDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F7),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 280,
            pinned: true,
            backgroundColor: Colors.black,
            leading: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: CircleAvatar(
                backgroundColor: Colors.black.withValues(
                  alpha: 0.4,
                  blue: 0.4,
                  green: 0.4,
                  red: 0.4,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.maybePop(context);
                  },
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.black.withValues(
                    red: 0.4,
                    blue: 0.4,
                    green: 0.4,
                    alpha: 0.4,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black54],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    right: 24,
                    bottom: 32,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Seaside Luxury Resort',
                          style: theme.textTheme.headlineSmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.white70,
                              size: 18,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Antalya, Turkey',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _HeaderSection(),
                    const SizedBox(height: 16),
                    _AmenitiesSection(),
                    const SizedBox(height: 24),
                    _InfoCardsSection(),
                    const SizedBox(height: 24),
                    _AboutSection(),
                    const SizedBox(height: 24),
                    _PhotosSection(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: const _BottomBar(),
    );
  }
}

class _HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Seaside Luxury Resort',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 18,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Antalya, Turkey • 2.3 km from center',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                const Icon(Icons.star_rounded, color: Colors.amber, size: 22),
                const SizedBox(width: 4),
                Text(
                  '4.8',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              '420 reviews',
              style: theme.textTheme.bodySmall?.copyWith(
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _AmenitiesSection extends StatelessWidget {
  final amenities = const [
    'Free breakfast',
    'Free cancellation',
    'Wi-Fi',
    'Pool',
    'Spa',
    'Sea view',
  ];

  const _AmenitiesSection();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: amenities
          .map(
            (item) => Chip(
              label: Text(item),
              backgroundColor: const Color(0xFFF3F4F6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          )
          .toList(),
    );
  }
}

class _InfoCardsSection extends StatelessWidget {
  const _InfoCardsSection();

  @override
  Widget build(BuildContext context) {
    final cards = [
      _InfoCardData(
        title: 'Price',
        value: '\$180',
        subtitle: 'per night',
        icon: Icons.attach_money_rounded,
      ),
      _InfoCardData(
        title: 'Distance',
        value: '2.3 km',
        subtitle: 'to center',
        icon: Icons.place_rounded,
      ),
      _InfoCardData(
        title: 'Rating',
        value: 'Excellent',
        subtitle: '4.8 / 5',
        icon: Icons.star_rounded,
      ),
    ];

    return Row(
      children: cards
          .map(
            (c) => Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: _InfoCard(data: c),
              ),
            ),
          )
          .toList(),
    );
  }
}

class _InfoCardData {
  final String title;
  final String value;
  final String subtitle;
  final IconData icon;

  _InfoCardData({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.icon,
  });
}

class _InfoCard extends StatelessWidget {
  final _InfoCardData data;

  const _InfoCard({required this.data});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(data.icon, size: 20, color: Colors.grey[700]),
          const SizedBox(height: 6),
          Text(
            data.value,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            data.title,
            style: theme.textTheme.bodySmall?.copyWith(color: Colors.grey[700]),
          ),
          const SizedBox(height: 2),
          Text(
            data.subtitle,
            style: theme.textTheme.bodySmall?.copyWith(
              color: Colors.grey[500],
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}

class _AboutSection extends StatelessWidget {
  const _AboutSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About this place',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Enjoy a relaxing stay at our seaside resort with private beach, infinity pool, and spa. '
          'All rooms feature modern interiors, balcony with sea view, and complimentary breakfast. '
          'Located just a few minutes from the city center and local attractions.',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: Colors.grey[700],
            height: 1.4,
          ),
        ),
      ],
    );
  }
}

class _PhotosSection extends StatelessWidget {
  final photos = const [
    'https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg',
    'https://images.pexels.com/photos/237371/pexels-photo-237371.jpeg',
    'https://images.pexels.com/photos/261102/pexels-photo-261102.jpeg',
    'https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg',
  ];

  const _PhotosSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Photos',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 110,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: photos.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Image.network(photos[index], fit: BoxFit.cover),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$180',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'per night • taxes included',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    'Book Now',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
