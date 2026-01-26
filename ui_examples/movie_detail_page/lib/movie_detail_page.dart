import 'package:flutter/material.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    const backdropUrl =
        'https://images.pexels.com/photos/799118/pexels-photo-799118.jpeg';
    const posterUrl =
        'https://images.pexels.com/photos/799137/pexels-photo-799137.jpeg';

    return Scaffold(
      backgroundColor: const Color(0xFF0B0D11),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 🔹 Üst kısım: Backdrop + Poster + Başlık
              Stack(
                clipBehavior: Clip.none,
                children: [
                  // Arka plan görsel
                  SizedBox(
                    height: 230,
                    width: double.infinity,
                    child: _NetworkImageWithPlaceholder(url: backdropUrl),
                  ),
                  // Karartma efekti
                  Container(
                    height: 230,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF000000),
                          Colors.transparent,
                          Color(0xCC000000),
                        ],
                      ),
                    ),
                  ),
                  // Geri ve favori butonları
                  Positioned(
                    left: 16,
                    top: 12,
                    child: _CircleIconButton(
                      icon: Icons.arrow_back,
                      onTap: () => Navigator.maybePop(context),
                    ),
                  ),
                  Positioned(
                    right: 16,
                    top: 12,
                    child: _CircleIconButton(
                      icon: Icons.favorite_border,
                      onTap: () {},
                    ),
                  ),
                  // Poster + başlık
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: -70,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // Poster
                        // YENİ
                        SizedBox(
                          width: 110, // poster genişliği
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: AspectRatio(
                              aspectRatio: 2 / 3,
                              child: _NetworkImageWithPlaceholder(
                                url: posterUrl,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Başlık + rating
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'The Silent Horizon',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleLarge?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star_rounded,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '4.6',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    '• 12k ratings',
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        _CircleIconButton(
                          icon: Icons.play_arrow_rounded,
                          background: Colors.redAccent,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 90),

              // 🔹 Alt kısım içerik
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    _MetaRow(),
                    SizedBox(height: 16),
                    _GenresSection(),
                    SizedBox(height: 24),
                    _OverviewSection(),
                    SizedBox(height: 24),
                    _CastSection(),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Network image + basit placeholder
class _NetworkImageWithPlaceholder extends StatelessWidget {
  final String url;

  const _NetworkImageWithPlaceholder({required this.url});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      errorBuilder: (_, __, ___) {
        // Resim yüklenemezse gri kutu
        return Container(
          color: const Color(0xFF1F2228),
          child: const Center(
            child: Icon(Icons.broken_image, color: Colors.white54, size: 32),
          ),
        );
      },
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
          color: const Color(0xFF1F2228),
          child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
        );
      },
    );
  }
}

/// Yuvarlak ikon buton
class _CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color? background;

  const _CircleIconButton({
    required this.icon,
    required this.onTap,
    this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: background ?? Colors.black.withOpacity(0.5),
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: const Padding(
          padding: EdgeInsets.all(8),
          child: Icon(Icons.arrow_back, color: Colors.white, size: 22),
        ),
      ),
    );
  }
}

/// Yıl + süre + yaş sınırı satırı
class _MetaRow extends StatelessWidget {
  const _MetaRow();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget pill(String text) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(999),
          color: Colors.white.withOpacity(0.08),
        ),
        child: Text(
          text,
          style: theme.textTheme.bodySmall?.copyWith(color: Colors.white70),
        ),
      );
    }

    return Row(
      children: [
        pill('2024'),
        const SizedBox(width: 8),
        pill('2h 18m'),
        const SizedBox(width: 8),
        pill('PG-13'),
        const Spacer(),
        Icon(
          Icons.subtitles_outlined,
          size: 18,
          color: Colors.white.withOpacity(0.7),
        ),
        const SizedBox(width: 4),
        Text(
          'Subtitles',
          style: theme.textTheme.bodySmall?.copyWith(
            color: Colors.white.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}

/// Türler (genre) chip’leri
class _GenresSection extends StatelessWidget {
  const _GenresSection();

  final genres = const ['Sci-Fi', 'Thriller', 'Drama'];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: genres
          .map(
            (g) => Chip(
              label: Text(g, style: const TextStyle(color: Colors.white)),
              backgroundColor: Colors.white.withOpacity(0.08),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          )
          .toList(),
    );
  }
}

/// Açıklama
class _OverviewSection extends StatelessWidget {
  const _OverviewSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Overview',
          style: theme.textTheme.titleMedium?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'In a near-future world where the sun has mysteriously vanished, '
          'a retired pilot must lead a risky mission above the clouds to '
          'restore the light and save humanity from an endless night.',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: Colors.white70,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}

/// Oyuncu listesi – avatarlar network değil, baş harf ile
class _CastSection extends StatelessWidget {
  const _CastSection();

  final cast = const [
    _CastMember(name: 'Emma Reed', role: 'Captain Elara'),
    _CastMember(name: 'Noah Clarke', role: 'Dr. Mercer'),
    _CastMember(name: 'Lia Chen', role: 'Navigator Aya'),
    _CastMember(name: 'Marcus Hale', role: 'Commander Rho'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Cast',
          style: theme.textTheme.titleMedium?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 115,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: cast.length,
            separatorBuilder: (_, __) => const SizedBox(width: 14),
            itemBuilder: (context, index) {
              final member = cast[index];
              final initial = member.name.isNotEmpty ? member.name[0] : '?';

              return Column(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: const Color(0xFF1F2228),
                    child: Text(
                      initial,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  SizedBox(
                    width: 90,
                    child: Text(
                      member.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                    child: Text(
                      member.role,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: Colors.white60,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CastMember {
  final String name;
  final String role;

  const _CastMember({required this.name, required this.role});
}
