# Shoes Application (Design Only)

This is a Flutter-based shoe application with an attractive design. The application showcases the latest shoe offers and allows users to browse, select, and purchase products with ease.

## Video 

<video src="./shopping-ui.mp4" width=180><video/>
## Features

- **Home Page**: Displays the latest offers and products. Users can select a product and navigate to the product details page.
- **Product Details Page**: Allows users to choose a size and add the product to the shopping cart.
- **Shopping Cart Page**: Enables users to increase or decrease quantities and remove unwanted products from the cart, with a confirmation message for deletion.
- **Checkout Page**: Shows an order summary with price details, including taxes, shipping costs, and the total amount.
- **Payment Page**: Allows users to enter their card information to complete the order, with mandatory fields like entering exactly 16 digits for the card number.

## Packages Used

- `flutter_animate: ^4.5.0`
- `google_fonts: ^6.2.1`
- `like_button: ^2.0.5`
- `shimmer_animation: ^2.2.1`
- `convex_bottom_bar: ^3.2.0`

## Getting Started

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart: Included with Flutter SDK
- IDE: Android Studio, VS Code, or any other IDE with Flutter support

### Installation

1. **Clone the repository:**

    ```bash
    git clone https://github.com/trt14/Project-4.git
    cd shopping_shoes_app
    cd shopping_shoes_app
    code .
    ```

2. **Install dependencies:**

    ```bash
    flutter pub get
    ```

3. **Run the app:**

    Connect your device or start an emulator, then run:

    ```bash
    flutter run
    ```

## Folder Structure

```
lib
│
├── data             # Handles the data layer
│
├── model            # Contains data models
│
├── screen           # Contains all the UI screens like Home, Product Details, etc.
│
├── theme            # Theme management and related configurations
│
├── validate         # Input validation logic
│
├── widget           # Reusable UI widgets
│
└── main.dart        # Entry point of the application
```

## Contributing

Since this is a design-focused project, contributions can include improvements to the UI, adding new screens, or refining existing components. Fork the repository and create a pull request with your changes.


## Contact

For any inquiries or suggestions, please contact:

- Name: Ali Altarouty
- Email: tarooti14@gmail.com

---
