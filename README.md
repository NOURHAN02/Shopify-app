# Shopify Clone Flutter

## Folder Structure
- `lib/`
  - `Scr/`
  - `app/`
    - `core/` : Contains utilities, styles, and common widgets
    - `features/` : Each feature in its own subfolder
      - `home/` : Home pages
      - `store/` : Store pages
      - `product/`
        - `data/` : Data layer
          - `models/` : Defines models like `OptionModel` and `ProductVariant`
          - `repo/` : `ProductRepo` implementation
        - `presentation/` : UI layer
          - `widgets/` : All product-related widgets
          - `manager/` : Bloc or Cubit for state management

## How to Run the Project
1. Make sure [Flutter](https://flutter.dev/docs/get-started/install) is installed
2. Open the project in VS Code or Android Studio
3. Run the following commands:
```bash
git clone https://github.com/NOURHAN02/Shopify-app.git
flutter pub get
flutter run
