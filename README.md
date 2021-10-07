## Flutter

`cd` in to the correct directory.

Install dependencies:
```bash
flutter pub get
```

To run the application in profile mode:
```bash
flutter run --profile
```

To target **macOS**:
```bash
flutter run --profile -d macos
```

Release build (specify platform):
```bash
flutter build macos
```

## Electron

[Electron Forge](https://www.electronforge.io/) was use to create the applications.

`cd` in to the correct directory.

Install dependencies:
```bash
yarn install
```

Package:
```bash
yarn make
```
