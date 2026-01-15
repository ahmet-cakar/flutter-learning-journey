# Flutter Command Örneği

Bu proje Flutter'da **ViewModel** ile **Command** kullanımını basit bir örnek üzerinden göstermektedir.

## Amaç

- Commandsız yapı ile başladık
- Daha sonra Command yapısını ekledik
- Aradaki farkları gözlemledik

## Yapı

    ├─ data/ → Repository (sahte API)
    ├─ viewmodel/ → Ekranın iş mantığı
    ├─ command/ → SimpleCommand sınıfı (running/error/value)
    └─ ui/ → HomeScreen (UI)


    
## Özellikler

- ViewModel içinde iş mantığı bulunur (loadUser)
- Command, bu iş mantığını UI'ya güvenli şekilde bağlar
- UI, Command üzerinden:
  - `cmd.running` → loading
  - `cmd.error` → hata durumu
  - `cmd.value` → başarı durumu
- `notifyListeners()` ile reactive yapı kurulur

## Çalıştırma

```bash
flutter pub get
flutter run
