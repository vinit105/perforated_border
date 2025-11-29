<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).--------/

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)------./
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

<h1  style="font-size: 36px;">Perforated Border</h1>
<p >
  A Flutter package that enables you to create beautiful perforated and punch-hole borders around widgets. Offers full control over shape, radius, spacing, and edge styles, allowing you to customize your widget's border appearance to suit your design needs.
</p>

## Features

<p align="center">
  <img src="https://raw" width="500" alt="perforated border preview"/>
</p>
<div align="center">
   <!--  Donations -->

  <div align="center">
    <a href="https://buymeacoffee.com/vinit105">
      <img width="150" alt="buymeacoffee" src="https://user-images.githubusercontent.com/26390946/161375563-69c634fd-89d2-45ac-addd-931b03996b34.png">
    </a>
  </div>
  <!--  Donations -->
</div>

<div align="center">
  <a href="https://pub.dev/packages/icons_launcher">
    <img src="https://img.shields.io/badge/Platform-Android%20|%20iOS%20|%20Web%20|%20macOS%20|%20Windows%20|%20Linux%20-blue.svg?logo=flutter"
      alt="Platform" />
  </a>
</div>

---



### Platform Support

| Android | iOS | macOS | Web | Linux | Windows |
| :-----: | :-: | :---: | :-: | :---: | :-----: |
|   ✅    | ✅  |   ✅   | ✅  |  ✅    |   ✅    |
## 📦 Getting started

```yaml
dependencies:
  perforated_border: ^1.0.0
```

Run:

```sh
flutter pub get
```


## Usage
Import the package 
```dart
import 'package:perforated_border/perforated_border.dart';

```
PerforatedBorder.  
  <img src="https://raw" width="500" alt="perforated border preview"/>.   

```dart
PerforatedBorder(
  options: PerforatedBorderOptions(
    dentRadius: 6,
    flatWidth: 4,
    stripeCount: 15,
    borderSideOptions: BorderSideOptions.allSides(
      color: Colors.black,
      style: PaintingStyle.stroke,
    ),
  ),
  child: Padding(
    padding: EdgeInsets.all(20),
    child: FlutterLogo(size: 60),
  ),
);
```
---
WavyBorder.  
  <img src="https://raw" width="500" alt="wavy border preview"/>.   

```dart
PerforatedBorder(
  options: WavyBorderOptions(
  stripeCount: 15,
  borderSideOptions: BorderSideOptions.allSides(
    color: Colors.black,
    style: PaintingStyle.stroke,
    ),
  ),
  child: Padding(
    padding: EdgeInsets.all(20),
    child: FlutterLogo(size: 60),
  ),
),
```
---
ZigZagBorder.  
  <img src="https://raw" width="500" alt="zigzag border preview"/>.   

```dart
PerforatedBorder(
  options: ZigzagBorderOptions(
    stripeCount: 10,
    borderSideOptions: BorderSideOptions.allSides(
      color: Colors.black,
      style: PaintingStyle.stroke,
    ),
  ),
  child: Padding(
    padding: EdgeInsets.all(20),
    child: FlutterLogo(size: 60),
  ),
),
```
---
BumpBorder.  
  <img src="https://raw" width="500" alt="bumper border preview"/>.   

```dart
PerforatedBorder(
  options: BumperBorderOptions(
    stripeCount: 10,
    borderSideOptions: BorderSideOptions.allSides(
      color: Colors.black,
      style: PaintingStyle.stroke,
    ),
  ),
  child: Padding(
    padding: EdgeInsets.all(20),
    child: FlutterLogo(size: 60),
  ),
),
```

## 🧪 Example App

Full runnable example in:
[Github](https://github.com/vinit105/perforated_border/blob/main/example/lib/main.dart)
```
example/lib/main.dart
```

---
## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.


If you encounter any issues [please report them here](https://github.com/vinit105/perforated_border/issues).

---

## ❤️ Support Development
If this saved you time: [Buy Me a Coffee ☕](https://buymeacoffee.com/vinit105)



## 📄 License

MIT License © 2025 [Github](https://github.com/vinit105/perforated_border)
