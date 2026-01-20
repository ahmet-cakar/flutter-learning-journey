# Weather Collect API Example ☀️🌧️

Basit bir hava durumu uygulaması. Kullanıcıdan şehir alır, API'den hava verilerini çeker ve ekranda gösterir.

## 🚀 Özellikler
- Şehir bazlı hava durumu sorgusu
- Günlük tahmin listesi
- MVVM + Repository + Service yapısı
- `provider` ile state management
- `dio` ile HTTP istekleri
- Hata ve loading durum yönetimi (`Result<T>` yaklaşımı)

## 🗂️ Mimari
    lib/
    ├─ data/
    │ ├─ weather_api_service.dart
    │ ├─ weather_repository_impl.dart
    │
    ├─ domain/
    │ ├─ weather_repository.dart
    │ ├─ daily_forecast.dart
    │
    ├─ presentation/
    │ ├─ weather_page.dart
    │ ├─ weather_view_model.dart
    │
    ├─ result.dart
    └─ main.dart



**Kısaca mimari motivasyonu:**
- `domain` → iş kuralları, modeller, soyutlamalar
- `data` → API & network işlemleri
- `presentation` → UI + ViewModel
- `result.dart` → async durum + hata sarmalayıcı

## 🔌 Kullanılan Paketler
```txt
dio
provider
