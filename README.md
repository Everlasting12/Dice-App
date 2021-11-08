# Dice

A Mobile Application that helps to generate random numbers, commonly as part of tabletop games, including dice games, board games, role-playing games, and games of chance.


## About

It is really hard to find the physical Dice whenever we feel like to play board games or table games like LUDO and Monopoly Business and Snake and Ladders.

###  Programming Languages:

Dart


### Softwares/Packages:


1. google_fonts: ^2.1.0
2. flutter_launcher_icons: ^0.9.2

#### google_fonts:
Usage:
```dart
dependencies:
    flutter:
        sdk: flutter
    google_fonts: ^2.1.0
```

#### flutter_launcher_icons:

To add the application icon 
```dart
dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_launcher_icons: ^0.9.2

flutter_icons:
  android: true
  ios: true
  image_path: "assets/images/dice_icon/dice_icon_xxxhdpi.png"

/* Make sure you added the assets folder or Image folder for the respective image  */


assets:
    - assets/images/dice_icon/
```

After adding all the packages just run the following command:

```bash
flutter pub run flutter_launcher_icons:main
```


- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
