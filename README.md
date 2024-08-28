# 1. Kebo
- App name: Kebo
- Package name: mobile.kebo.app
- Language: Dart
- Flutter: stable 3.24.0
- IDE:  Visual Code / Android Studio
- Deployment target
    -  iOS: `12.0+.`
    - Android: `minSdkVersion 21`
- Device Orientation: Portrail (primary)
- Standard design: iPhone XS (375x812 @3x)
- Flavor: n/a (development | production)

  iOS: Kebo
    - https://apps.apple.com/us/app/

  Android: Kebo
    - https://play.google.com/store/apps/details?id=

                                                                                                                                          
# 2. Technical Development

## 2.1 How to Run
Step 1: Install Flutter: https://flutter.dev/docs/get-started/install
  - Flutter version: 3.24.0
  - Channel: stable

Step 2: Get source.
  ```
  flutter pub get
  ```
Step 3: run
  ```
  flutter run
  ```

## 2.2 API document
  - API: 
  - Design: 

# 3. Development: How to build 
# 3.1 Flutter
```
  flutter run
```

## 3.2 Build apk release

```
  flutter build apk --split-per-abi
```
flutter pub run build_runner build --delete-conflicting-outputs
## 3.3 Build appbundle 

```
  flutter build appbundle
```

## Adroid appbundle 

```s
    Build Production
    APK: flutter build apk --flavor prod
    App Bundle: flutter build appbundle --flavor prod
    
    Build Development
    APK: flutter build apk --flavor dev 
    App Bundle: flutter build appbundle --flavor dev 
```


